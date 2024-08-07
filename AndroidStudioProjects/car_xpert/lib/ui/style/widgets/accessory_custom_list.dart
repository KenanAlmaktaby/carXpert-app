import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/data/models/accessory_general_model/accessory_general_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AccessoryCostumeList extends StatelessWidget {
  late List<AccessoryDatum> list;
  AccessoryCostumeList({
    required this.list,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index) {
          AccessoryDatum item = list[index];
          return GestureDetector(
            onTap: (){
              // Get.to(
              //     AccessoryDetailsPage( accessory:  list[index])
              // );
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
                          item.brand,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0.5.h,),
                        Text(
                          item.name,
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
