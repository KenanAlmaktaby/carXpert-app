import 'package:carousel_slider/carousel_slider.dart';
import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/domain/controller/sale_car_details_controller.dart';
import 'package:carxpert/ui/style/widgets/build_image.dart';
import 'package:carxpert/ui/style/widgets/car_detail_body.dart';
import 'package:carxpert/ui/style/widgets/detail_button.dart';
import 'package:carxpert/ui/style/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class SaleCarDetailsPage extends StatelessWidget {
  int? carId;
  SaleCarDetailsPage({this.carId, super.key});

  @override
  Widget build(BuildContext context) {
    SaleCarDetailsController saleCarDetailsController =
        Get.put(SaleCarDetailsController(carId!));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            Header(
              title: 'Car Details',
            ),
            SizedBox(
              height: 40.h,
              child: Obx(
                () => saleCarDetailsController.isCarLoading.value
                    ? Shimmer.fromColors(
                        baseColor: Colors.white24,
                        highlightColor: Colors.white60,
                        child: Container(
                          height: 40.h,
                          width: double.infinity.w,
                          color: Colors.white24,
                        ))
                    : CarouselSlider.builder(
                        options: CarouselOptions(
                          height: double.infinity,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          autoPlayAnimationDuration: const Duration(seconds: 2),
                          onPageChanged: (index, reason) =>
                              saleCarDetailsController.changeImage(index),
                        ),
                        itemCount: saleCarDetailsController.images.length,
                        itemBuilder: (BuildContext context, index, realindex) {
                          final image = saleCarDetailsController.images[index];
                          return BuildImage(
                            url: ServerConfig.domainNameServer + image,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                        top: 2.h, start: 6.w, end: 6.w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onBackground,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Obx(() => saleCarDetailsController.isCarLoading.value
                        ? Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary,
                        )
                    )
                        : CarDetailBody(
                            carInstance: saleCarDetailsController.car,
                            colorsList: saleCarDetailsController.colorsList,
                            isRent: false,
                          )),
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
