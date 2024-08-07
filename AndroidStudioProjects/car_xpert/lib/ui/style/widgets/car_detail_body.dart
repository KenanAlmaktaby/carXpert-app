import 'package:carxpert/data/models/car_color_model/car_color_model.dart';
import 'package:carxpert/data/models/rent_car_model/rent_car_model.dart';
import 'package:carxpert/data/models/sale_car_model/sale_car_model.dart';
import 'package:carxpert/ui/style/widgets/detail_platform.dart';
import 'package:carxpert/ui/style/widgets/detail_platform_for_big_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class CarDetailBody extends StatelessWidget {
  RentCarData? car;
  CarData? carInstance;
  List<ColorCarQuantity>? colorsList;
  bool isRent;

  CarDetailBody({
    this.carInstance,
    this.car,
    this.colorsList,
    required this.isRent,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return isRent
        ? SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 1.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20.sp),
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Row(
                    children: [
                      Text(
                        car!.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '${car!.productionYear}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          car!.model,
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
                        Text(
                          ' ${car!.price}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                DetailPlatform(
                  icon: Icons.compare_arrows_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Car Transmission:',
                  value: car!.carTransmission,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.directions_car_filled_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'propulsion Type:',
                  value: car!.propulsionType,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.build_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Engine Type:',
                  value: car!.engineType,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.crop_free,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Engine Size:',
                  value: '${car!.engineSize}',
                  unit: 'L',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.format_color_fill_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Fuel Tank Capacity :',
                  value: '${car!.fuelTankCapacity}',
                  unit: 'L',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Ionicons.speedometer,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Mileage :',
                  value: '${car!.mileage}',
                  unit: ' KM',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.color_lens_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Availability Colors :',
                  value: '',
                  unit: '',
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 7.w),
                  width: double.infinity.w,
                  height: 5.h,
                  child:Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(25),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                                shape: BoxShape.circle,
                                color: findSameColor(car!.color),
                              ),
                              height: 6.h,
                              width: 6.w,
                            ),
                          ),
                        ],),
                ),
                DetailPlatform(
                  icon: Icons.timeline_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Number of Rented times :',
                  value: '${car!.numberForRentedTime}',
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: FontAwesomeIcons.plateWheat,//Icons.numbers,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Car Plate :',
                  value: '${car!.registrationPlate}',
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatformForBigText(
                  icon: Ionicons.pricetag_outline,
                  detailName: 'Price Type:',
                  value: '${car!.priceType}',
                ),
                SizedBox(height: 2.h),
              ],
            ),
          )
        : SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 1.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20.sp),
                      color: Theme.of(context).colorScheme.onSurface),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Row(
                    children: [
                      Text(
                        carInstance!.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '${carInstance!.productionYear}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          carInstance!.model,
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
                        Text(
                          ' ${carInstance!.price}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                // SizedBox(width: 33.w,),

                SizedBox(height: 4.h),
                DetailPlatform(
                  icon: Icons.compare_arrows_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Car Transmission:',
                  value: carInstance!.carTransmission,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.directions_car_filled_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'propulsion Type:',
                  value: carInstance!.propulsionType,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.build_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Engine Type:',
                  value: carInstance!.engineType,
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.crop_free,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Engine Size:',
                  value: '${carInstance!.engineSize}',
                  unit: 'L',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.format_color_fill_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Fuel Tank Capacity :',
                  value: '${carInstance!.fuelTankCapacity}',
                  unit: 'L',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.local_gas_station_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Fuel Type :',
                  value: '${carInstance!.fuelType}',
                  unit: ' KM/L',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.color_lens_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Availability Colors :',
                  value: '',
                  unit: '',
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 7.w),
                  width: double.infinity.w,
                  height: 5.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 1.h,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: colorsList!.length,
                    itemBuilder: (context, index) {
                      ColorCarQuantity color = colorsList![index];
                      return Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(25),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                                shape: BoxShape.circle,
                                color: findSameColor(color.name),
                              ),
                              height: 6.h,
                              width: 6.w,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            '->    ${color.quantity}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
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
                DetailPlatform(
                  icon: Icons.timeline_outlined,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Number of car:',
                  value: '${carInstance!.numberOfCars}',
                  unit: '',
                ),
                SizedBox(height: 2.h),
                DetailPlatform(
                  icon: Icons.money,
                  iconColor: Theme.of(context).colorScheme.primary,
                  detailName: 'Deposit Amount:',
                  value: '${carInstance!.depositAmount}',
                  unit: '',
                ),
                SizedBox(height: 2.h),
                carInstance!.additionalInformation== null ?
                    SizedBox.shrink()
                :DetailPlatformForBigText(
                  icon: Ionicons.information_circle_outline,
                  detailName: 'Additional Information :',
                  value: '${carInstance!.additionalInformation}',
                ),
                SizedBox(height: 2.h),
              ],
            ),
          );
  }

  dynamic findSameColor(String value) {
    Map<String, dynamic> accessoryColor = {
      'Red': Color(0xffff0000),
      'Black': Color(0xff0a0a0a),
      'Brown': Color(0xffa14a29),
      'White': Color(0xfffdfbfb),
      'Gray': Color(0xff7e7c7c),
      'Pink': Color(0xfff857da),
      'Purple': Color(0xff50078f),
      'Blue': Color(0xff008ec9),
      'Green': Color(0xff28b414),
      'Yellow': Color(0xfffff800),
      'Navy Blue': Color(0xff10114d),
      'Burgundy': Color(0xff790202),
      'Silver': Color(0xffffa400)
    };
    for (int i = 0; i < accessoryColor.length; i++) {
      if (accessoryColor.containsKey(value)) {
        return accessoryColor[value];
      }
    }
  }
}
