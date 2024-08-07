import 'package:carousel_slider/carousel_slider.dart';
import 'package:carxpert/data/models/accessory_model/accessory_model.dart';
import 'package:carxpert/domain/controller/accessory_details_controller.dart';
import 'package:carxpert/ui/style/widgets/accessory_detail_body.dart';
import 'package:carxpert/ui/style/widgets/build_image.dart';
import 'package:carxpert/ui/style/widgets/detail_button.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AccessoryDetailsPage extends StatelessWidget {
  AccessoryModel? accessory;

  AccessoryDetailsPage({this.accessory, super.key});

  @override
  Widget build(BuildContext context) {
    AccessoryDetailsController accessoryDetailsController =
        Get.put(AccessoryDetailsController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            Header(
              title: 'Accessory Details',
            ),
            SizedBox(
              height: 40.h,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: double.infinity,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  onPageChanged: (index, reason) =>
                      accessoryDetailsController.changeImage(index),
                ),
                itemCount: accessory!.photos.length,
                itemBuilder: (BuildContext context, index, realindex) {
                  final image = accessory!.photos[index];
                  return BuildImage(
                    url: image,
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 2.h, start: 6.w,end: 6.w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: AccessoryDetailBody(accessoryInstance: accessory,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            DetailButton(buttonText: 'Bye Now',onTapButton: (){}),
          ],
        ),
      ),
    );
  }
}
