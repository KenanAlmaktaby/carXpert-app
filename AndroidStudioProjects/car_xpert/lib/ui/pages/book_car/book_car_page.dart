import 'package:borders/borders.dart';
import 'package:carxpert/domain/controller/book_car_controller.dart';
import 'package:carxpert/ui/pages/calendar_date/calender_date_page.dart';
import 'package:carxpert/ui/style/app_colors.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:carxpert/ui/style/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BookCarPage extends StatelessWidget {
  int? carId;
  BookCarPage({
    this.carId,
});
  @override
  Widget build(BuildContext context) {
    BookCarController bookCarController = Get.put(BookCarController(carId!));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(title: 'Book Car'),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 2.w),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Choose a date:',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 15.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                bookCarController.start.value.toIso8601String(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'to :',
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                bookCarController.end.value.toIso8601String(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(10.sp),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap:  ()  {
                        Get.to(()=> CalendarDatePage(carId: bookCarController.carId,));
                      },
                      child: Container(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                        height: 10.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.sp),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.tertiary),
                            shape: BoxShape.rectangle),
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  " Select Date ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      fontSize: 15.sp),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Icon(
                                Icons.date_range_sharp,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(10.sp),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                        height: 10.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.sp),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.tertiary),
                            shape: BoxShape.rectangle),
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "personal identification ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.onSurface,
                                      fontSize: 15.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Icon(
                                Icons.person_add_alt_1,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(10.sp),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                        EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.sp),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.tertiary),
                          shape: BoxShape.rectangle),
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "driving licence ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).colorScheme.onSurface,
                                      fontSize: 15.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: Icon(
                                Icons.drive_folder_upload,
                                color:Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MyButton(
                text: 'Confirm Booking',
                onTap: () {},
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
