import 'package:carxpert/data/models/accessory_model/accessory_model.dart';
import 'package:carxpert/domain/controller/accessory_controller.dart';
import 'package:carxpert/ui/style/widgets/detail_platform.dart';
import 'package:carxpert/ui/style/widgets/detail_platform_for_big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class AccessoryDetailBody extends StatelessWidget {
  AccessoryModel? accessoryInstance;

  AccessoryDetailBody({required this.accessoryInstance, super.key});

  @override
  Widget build(BuildContext context) {
    AccessoryController accessoryController = Get.put(AccessoryController());
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 1.h,
            width: 20.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20.sp),
                color: Theme.of(context).colorScheme.onSurface
            ),
          ),
          SizedBox(height: 2.h,),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              accessoryInstance!.name,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    accessoryInstance!.brand,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'SAR',
                    style: TextStyle(

                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Text(
                '${accessoryInstance!.price}',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          DetailPlatformForBigText(
            icon: Icons.description,
            detailName: 'Description :',
            value: accessoryInstance!.description,
          ),
          accessoryInstance?.material != null
              ? DetailPlatform(
                  icon: Icons.article_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Material :',
                  value: '${accessoryInstance!.material}',
                  unit: '',
                )
              : const SizedBox.shrink(),
          accessoryInstance?.material != null?
          SizedBox(height: 2.h) : SizedBox.shrink(),
          DetailPlatform(
            icon: Icons.color_lens_outlined,
            iconColor: Theme.of(context).colorScheme.primary,
            detailName: 'Availability Colors :',
            value: '',
            unit: '',
          ),
          SizedBox(height: 2.h),
          Container(
            padding: EdgeInsetsDirectional.only(start: 7.w),
            width: double.infinity.w,
            height: 4.h,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: accessoryInstance!.colors?.length,
              itemBuilder: (context, index) {
                Color color = accessoryController
                    .findSameColor(accessoryInstance!.colors![index]);
                return Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadiusDirectional.circular(25),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).colorScheme.onSurface),
                          shape: BoxShape.circle,
                          color: color,
                        ),
                        height: 6.h,
                        width: 6.w,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 2.h),
          DetailPlatformForBigText(
            icon: Ionicons.information_circle_outline,
            detailName: 'More Information :',
            value: '${accessoryInstance!.additionalInfo}',
          ),
          SizedBox(height: 2.h),
          DetailPlatformForBigText(
              icon: Ionicons.checkmark_circle_outline,
              detailName: 'Features:',
              list: accessoryInstance!.features
          ),
        ],
      ),
    );
  }
}
