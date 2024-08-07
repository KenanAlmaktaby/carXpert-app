import 'package:carxpert/service/book_car_service.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BookCarController extends GetxController{
  Rx<DateTime> start = DateTime(0).obs;
  Rx<DateTime> end = DateTime(0).obs;
  int carId=0;
  List<String> reservedDaysList =[];
  List<DateTime> bookedDates = [];
  BookCarService bookCarService = BookCarService();
  RxBool isLoading = true.obs;

  BookCarController(int carId){
    this.carId = carId;
  }
  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onReady() async{
  //   reservedDaysList = await bookCarService.getReservedDays(carId);
  //   bookedDates = convertToDateTimeList(reservedDaysList);
  //   isLoading(false);
  //   print(bookedDates);
  //   super.onReady();
  // }

  void setStartDate(DateTime selectedStart){
    start.value = selectedStart;
  }

  void setEndDate(DateTime selectedEnd){
    end.value = selectedEnd;
  }

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
      markedDatesMap[date] = [date]; // You can customize the value as needed
    }
    return markedDatesMap;
  }
}