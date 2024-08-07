import 'package:carxpert/domain/controller/rent_search_controller.dart';
import 'package:carxpert/ui/style/app_colors.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../style/widgets/costume_list.dart';


class RentSearchPage extends StatelessWidget {
  RentSearchController rentSearchController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
          Header(title: 'search',),
            Padding(
              padding: EdgeInsetsDirectional.all(10.sp),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.sp),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                        onChanged: (value) =>
                            rentSearchController.filterCars(value),
                        cursorColor: AppColors.purple,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: AppColors.purple,
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            // Expanded(
            //   child: Obx(
            //     () => CostumeList(list: rentSearchController.foundCars.value ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
