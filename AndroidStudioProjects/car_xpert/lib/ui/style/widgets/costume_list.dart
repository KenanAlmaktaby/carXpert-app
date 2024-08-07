import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/ui/pages/rent_car_details/rent_car_details_page.dart';
import 'package:carxpert/ui/pages/sale_car_details/sale_car_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../data/models/general_model/general_model.dart';

class CostumeList extends StatelessWidget {
  late List<Datum> list;
  bool isRent;

  CostumeList({
    required this.list,
    required this.isRent,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          Datum item = list[index];
          return GestureDetector(
            onTap: (){
              isRent?Get.to(()=>
                  RentCarDetailsPage(carId: item.carId,)
              ):
              Get.to(()=>
                SaleCarDetailsPage(carId: item.carId,)
              );
            },
            child: Container(
              margin: EdgeInsetsDirectional.symmetric(vertical: 1.h),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 3.w, end: 3.w, top: 1.h),
                    child: Container(
                      height: 15.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(ServerConfig.domainNameServer+item.images)),
                      ),
                      margin: EdgeInsets.only(bottom: 1.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 4.w , top: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.8.h,),
                        Text(
                          item.model,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0.5.h,),
                        Text(
                          '${item.name} ${item.productionYear}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 0.5.h,),
                        Text(
                          'SAR ${item.price}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
