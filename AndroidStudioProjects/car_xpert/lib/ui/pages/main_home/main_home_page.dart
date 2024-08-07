import 'package:carxpert/data/models/accessory_model/accessory_model.dart';
import 'package:carxpert/data/models/car_model/car_model.dart';
import 'package:carxpert/domain/controller/accessory_controller.dart';
import 'package:carxpert/domain/controller/rent_cars_controller.dart';
import 'package:carxpert/domain/controller/sale_car_details_controller.dart';
import 'package:carxpert/domain/controller/sale_cars_controller.dart';
import 'package:carxpert/ui/pages/rent_cars/rent_cars_page.dart';
import 'package:carxpert/ui/pages/sale_cars/sale_cars_page.dart';
import 'package:carxpert/ui/style/widgets/big_text.dart';
import 'package:carxpert/ui/style/widgets/card_containar.dart';
import 'package:carxpert/ui/style/widgets/loading_card_container.dart';
import 'package:carxpert/ui/style/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class MainHomePage extends StatelessWidget {
  RentCarsController rentCarsController = Get.put(RentCarsController());
  SaleCarsController saleCarsController = Get.put(SaleCarsController());
  AccessoryController accessoryController = Get.put(AccessoryController());
  MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.transparent,
        leading: SizedBox(),
        title: Center(
          child: Text(
            'CARXPERT',
            style: TextStyle(
                letterSpacing: 2.w,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 18.sp),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.all(5.sp),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.solidBell,
                    color: Theme.of(context).colorScheme.onSecondary,
                    size: 18.sp,
                  ),
                ),
                Positioned(
                  top: 1.h,
                  right: 3.w,
                  child: Container(
                    height: 1.4.h,
                    width: 3.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                ),
                Positioned(
                  top: 1.2.h,
                  right: 3.5.w,
                  child: Container(
                    height: 1.h,
                    width: 2.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 30.h,
                  child: Get.isDarkMode
                      ? Image.asset(
                          'assets/images/home/home_bg_3.jpg',
                          width: double.infinity.w,
                          fit: BoxFit.fill,
                          colorBlendMode: BlendMode.darken,
                        )
                      : Image.asset(
                          'assets/images/home/home_bg_2.jpg',
                          width: double.infinity.w,
                          fit: BoxFit.fill,
                          colorBlendMode: BlendMode.darken,
                        ),
                ),
                Container(
                  height: 5.h,
                  width: 50.w,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                Positioned(
                  top: 20.h,
                  right: 20.w,
                  child: Container(
                    height: 5.h,
                    width: 50.w,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.all(20.sp),
                  child: Text(
                    'Find The \n Best Car \n With \n Our Services',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.all(10.sp),
                  child: Text(
                    'Find The \n Best Car \n With \n Our Services',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'cars for sale',
                    color: Theme.of(context).colorScheme.primary,
                    weight: FontWeight.bold,
                    size: 15.sp,
                  ),
                  FlexTextButton(
                    onTap: () {
                      Get.toNamed('/SaleCars');
                    },
                    text: 'see all',
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ],
              ),
            ),
            Obx(() => saleCarsController.isLoading.value
                ? LoadingCardContainer()
                : CardContainer(
                    list: saleCarsController.saleCarsList,
                    isAccessory: false,
                    isRent: false,
                  )),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'cars for rent',
                    color: Theme.of(context).colorScheme.primary,
                    weight: FontWeight.bold,
                    size: 15.sp,
                  ),
                  FlexTextButton(
                    onTap: () {
                      Get.toNamed('/RentCars');
                    },
                    text: 'see all',
                    color: Theme.of(context).colorScheme.onSecondary,
                  )
                ],
              ),
            ),
            Obx(
              () => rentCarsController.isLoading.value
                  ? LoadingCardContainer()
                  : CardContainer(
                      list: rentCarsController.rentCarsList,
                      isAccessory: false,
                      isRent: true,
                    ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'accessory',
                    color: Theme.of(context).colorScheme.primary,
                    weight: FontWeight.bold,
                    size: 15.sp,
                  ),
                  FlexTextButton(
                    onTap: () {
                      Get.toNamed('/Accessory');
                    },
                    text: 'see all',
                    color: Theme.of(context).colorScheme.onSecondary,
                  )
                ],
              ),
            ),
            Obx(
              () => accessoryController.isLoading.value
                  ? LoadingCardContainer()
                  : CardContainer(
                      accessoryList: accessoryController.accessoriesList,
                      isAccessory: true,
                      isRent: false,
                    ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'spare part',
                    color: Theme.of(context).colorScheme.primary,
                    weight: FontWeight.bold,
                    size: 15.sp,
                  ),
                  FlexTextButton(
                    onTap: () {},
                    text: 'see all',
                    color: Theme.of(context).colorScheme.onSecondary,
                  )
                ],
              ),
            ),
            Obx(
              () => rentCarsController.isLoading.value
                  ? LoadingCardContainer()
                  : CardContainer(
                      list: rentCarsController.rentCarsList,
                      isAccessory: false,
                      isRent: true,
                    ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
