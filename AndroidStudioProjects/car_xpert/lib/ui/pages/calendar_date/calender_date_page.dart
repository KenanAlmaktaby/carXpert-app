import 'package:carxpert/domain/controller/calender_date_controller.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDatePage extends StatelessWidget {
  int? carId;
  CalendarDatePage({
    this.carId,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    int i=0;
    CalenderDateController calenderDateController = Get.put(CalenderDateController(carId!));
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            Header(title: 'Select Date',),
            Obx(
              ()=> calenderDateController.isLoading.value?
                  Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
              :TableCalendar(
                focusedDay: calenderDateController.focusDay.value,
                selectedDayPredicate: (day)=> isSameDay(calenderDateController.selectedDay.value, day),
                firstDay: calenderDateController.start,
                lastDay: calenderDateController.end,
                calendarFormat: calenderDateController.calenderFormat.value,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                onDaySelected: calenderDateController.onDaySelected,
                rangeStartDay: calenderDateController.rangeStart.value,
                rangeEndDay: calenderDateController.rangeEnd.value,
                onRangeSelected: calenderDateController.onRangeSelected,
                rangeSelectionMode: RangeSelectionMode.toggledOn,

                calendarStyle: CalendarStyle(
                  outsideDaysVisible: false,
                ),
                onFormatChanged: (format){
                    if(calenderDateController.calenderFormat != format){
                      calenderDateController.calenderFormat.value = format;
                    }
                },
                onPageChanged: (day){
                    calenderDateController.focusDay.value = day;
                },
                eventLoader: (day) {
                 calenderDateController.isBooked.value = calenderDateController.bookedDates.any((bookedDate) => isSameDay(bookedDate, day));
                print('${calenderDateController.bookedDates.any((bookedDate) => isSameDay(bookedDate, day))}');
                return calenderDateController.isBooked.value ? [
                  Container(
                    height: 1.h,
                    width: 1.w,
                    color: Colors.red)] : [];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
