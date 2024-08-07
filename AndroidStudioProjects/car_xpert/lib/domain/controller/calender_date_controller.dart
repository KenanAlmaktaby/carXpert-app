import 'package:carxpert/service/calender_date_service.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderDateController extends GetxController{
  Rx<bool> isBooked = false.obs;
  Rx<CalendarFormat> calenderFormat = CalendarFormat.month.obs;
  DateTime start = DateTime.utc(2024,6,20);
  DateTime end = DateTime.utc(2030,6,20);
  Rx<DateTime> rangeStart = DateTime(0).obs;
  Rx<DateTime> rangeEnd = DateTime(0).obs;
  Rx<DateTime> focusDay = DateTime.now().obs;
  Rx<DateTime?> selectedDay = DateTime(0).obs;

  int carId = 0;
  List<String> reservedDaysList =[];
  List<DateTime> bookedDates = [];
  CalenderDateService calenderDateService = CalenderDateService();
  RxBool isLoading = true.obs;

  CalenderDateController(int carId){
    this.carId = carId;
  }
  @override
  void onInit() {
    selectedDay.value = focusDay.value;
    super.onInit();
  }

  @override
  void onReady() async{
    reservedDaysList = await calenderDateService.getReservedDays(carId);
    bookedDates = convertToDateTimeList(reservedDaysList);
    print(' rrrrrrrrrr $reservedDaysList');
    print('bbbbbbbbb $bookedDates');
    isLoading(false);
    print(bookedDates);
    super.onReady();
  }

  void onDaySelected(DateTime sDate , DateTime fDate){
    if(!isSameDay(selectedDay.value, sDate)){
      selectedDay.value = sDate;
      focusDay.value = fDate;
    }
  }

  void onRangeSelected(DateTime? start , DateTime? end , DateTime focus){
    selectedDay.value = DateTime(0);

    focusDay.value = focus;
    if(start!= null ) {
      rangeStart.value = start;
    }
    if (end != null){
    rangeEnd.value = end;}
    print('$start |||$end');
  }

  // void setStartDate(DateTime selectedStart){
  //   rangeStart.value = selectedStart;
  // }
  //
  // void setEndDate(DateTime selectedEnd){
  //   rangeEnd.value = selectedEnd;
  // }

  bool isDaySelectable(DateTime day) {
    String formattedDay = DateFormat('yyyy-MM-dd').format(day);
    return !reservedDaysList.contains(formattedDay);
  }

  List<DateTime> convertToDateTimeList(List<String> daysList) {
    List<DateTime> dateTimeList = [];
    for (String day in daysList) {
      List<String> parts = day.split('/');
      int dayValue = int.parse(parts[0]);
      int monthValue = int.parse(parts[1]);
      int yearValue = int.parse(parts[2]);
      DateTime dateTime = DateTime(yearValue, monthValue, dayValue);
      dateTimeList.add(dateTime);
    }
    return dateTimeList;
  }

  Map<DateTime, List<dynamic>> getBookedDatesMap() {
    Map<DateTime, List<dynamic>> markedDatesMap = {};
    for (DateTime date in bookedDates) {
      markedDatesMap[date] = [date];// You can customize the value as needed
    }
    return markedDatesMap;
  }
}