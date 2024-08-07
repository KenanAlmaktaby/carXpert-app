// import 'package:carxpert/data/models/order_model/order_model.dart';
// import 'package:carxpert/ui/style/app_colors.dart';
// import 'package:carxpert/ui/style/widgets/header.dart';
// import 'package:carxpert/ui/style/widgets/small_text.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
//
// class OrderDetailsPage extends StatelessWidget {
//   OrderModel? order;
//
//   OrderDetailsPage({ this.order, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Header(
//         titleText: 'Order details',
//         descibtionText: '  ',
//         widget: SingleChildScrollView(
//           child: SizedBox(
//             height: 200.h,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 80,
//                   //  width: 200,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: const [
//                         BoxShadow(
//                             color: AppColors.lightPurple,
//                             blurRadius: 5,
//                             offset: Offset(0.5, 0.5))
//                       ]),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: 10,
//                       ),
//                       SmallText(
//                         size: 17,
//                         text: 'state order : ',
//                         color: AppColors.blackText,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                        Stack(
//                               alignment: AlignmentDirectional.center,
//                               children: [
//                                 Container(
//                                   width: 180,
//                                   height: 2,
//                                   color: Colors.black,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     order!.state == 'in check'
//                                         ? Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               CircleAvatar(
//                                                 radius: 15,
//                                                 backgroundColor:
//                                                     AppColors.lightPurple,
//                                                 child: Icon(
//                                                   Icons.check,
//                                                   color: Colors
//                                                       .green,
//                                                 ),
//                                               ),
//                                               SmallText(
//                                                 text: order!.state,
//                                                 size: 12,
//                                                 color: Colors.black,
//                                               ),
//                                             ],
//                                           )
//                                         : CircleAvatar(
//                                             radius: 15,
//                                             backgroundColor:
//                                                 AppColors.darkGrey,
//                                           ),
//                                     SizedBox(width: 30),
//                                     order!.state == 'in process'
//                                         ? Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               CircleAvatar(
//                                                 radius: 15,
//                                                 backgroundColor:
//                                                     AppColors.lightPurple,
//                                                 child: Icon(
//                                                   Icons.check,
//                                                   color: Colors
//                                                       .green, // المرحلة المحددة
//                                                 ),
//                                               ),
//                                               SmallText(
//                                                 text: order!.state,
//                                                 size: 12,
//                                                 color: Colors.black,
//                                               ),
//                                             ],
//                                           )
//                                         : CircleAvatar(
//                                             radius: 15,
//                                             backgroundColor:
//                                                 AppColors.darkGrey,
//                                           ),
//                                     SizedBox(width: 30),
//                                     order!.state == 'order done'
//                                         ? Column(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               CircleAvatar(
//                                                 radius: 15,
//                                                 backgroundColor:
//                                                     AppColors.lightPurple,
//                                                 child: Icon(
//                                                   Icons.check,
//                                                   color: Colors
//                                                       .green, // المرحلة المحددة
//                                                 ),
//                                               ),
//                                               SmallText(
//                                                 text: order!.state,
//                                                 size: 12,
//                                                 color: Colors.black,
//                                               ),
//                                             ],
//                                           )
//                                         : CircleAvatar(
//                                             radius: 15,
//                                             backgroundColor:
//                                                 AppColors.darkGrey, // قيد التحقق
//                                           ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.numbers_sharp),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'order number: ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: '${order!.number}',
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.type_specimen_outlined),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'type order : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.type,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.date_range_sharp),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'date order : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.date,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 order!.rentTerm != null
//                     ? Row(
//                         children: [
//                           Icon(Icons.timelapse),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           SmallText(
//                             size: 17,
//                             text: 'rental term : ',
//                             color: AppColors.blackText,
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           SmallText(
//                               text: order!.rentTerm!,
//                               color: AppColors.blackText,
//                               weight: FontWeight.w500),
//                         ],
//                       )
//                     : const SizedBox.shrink(),
//                 order!.rentTerm != null
//                     ? SizedBox(
//                         height: 20,
//                       )
//                     : const SizedBox.shrink(),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.margin_outlined),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'brand : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.brand,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.time_to_leave),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: ' car name : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.name,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.password),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'plate number : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.plateNumber,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.color_lens),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'car color : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.carColor,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.price_check_rounded),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: ' price : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.price,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.date_range_outlined),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'received date : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.receivedDate,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 order!.deliveryDate != null
//                     ?
//                 Row(
//                   children: [
//                     Icon(Icons.date_range_rounded),
//                     SizedBox(
//                       width: 20,
//                     ),
//                      SmallText(
//                             size: 17,
//                             text: 'delivery date  : ',
//                             color: AppColors.blackText,
//                           ),
//                      SizedBox(
//                             width: 30,
//                           ),
//                     SmallText(
//                         text: '${order!.deliveryDate}',
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ): const SizedBox.shrink(),
//                 order!.deliveryDate != null
//                     ?
//                 SizedBox(
//                   height: 20,
//                 ): const SizedBox.shrink(),
//                 Container(
//                   height: 2,
//                   color: AppColors.lightGrey,
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.receipt),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     SmallText(
//                       size: 17,
//                       text: 'received type : ',
//                       color: AppColors.blackText,
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     SmallText(
//                         text: order!.receivedType,
//                         color: AppColors.blackText,
//                         weight: FontWeight.w500),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
