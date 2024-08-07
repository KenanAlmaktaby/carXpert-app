// import 'package:carxpert/domain/controller/Internal_Maintenance_controller.dart';
// import 'package:carxpert/ui/pages/my_orders/my_orders_page.dart';
// import 'package:carxpert/ui/style/app_colors.dart';
// import 'package:carxpert/ui/style/widgets/flex_button.dart';
// import 'package:carxpert/ui/style/widgets/header.dart';
// import 'package:carxpert/ui/style/widgets/small_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class InternalMaintenancePage extends StatelessWidget {
//   InternalMaintenancePage({super.key});
//
//   InternalMaintenanceController internalMaintenanceController =
//       Get.put(InternalMaintenanceController());
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> carModels = [
//       'Kia',
//       'BMW',
//       'Nissan',
//       'Ford',
//       'Toyota',
//       'Hyundai',
//       'Audi',
//       'Chevrolet',
//     ];
//     return Header(
//         titleText: ' Internal Maintenance',
//         descibtionText: '   ',
//         widget: Obx(
//           ()=> SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       top: 60.0, left: 10, right: 10, bottom: 20),
//                   child:Column(
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 350,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Color.fromARGB(255, 189, 167, 198),
//                                     blurRadius: 5,
//                                     offset: Offset(0.5, 0.5))
//                               ]),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               SmallText(
//                                 text: 'car model',
//                                 color: Colors.grey,
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               DropdownButton<String>(
//                                 value:
//                                     internalMaintenanceController.selectedCar.value,
//                                 items: carModels.map((String carModel) {
//                                   return DropdownMenuItem<String>(
//                                     value: carModel,
//                                     child: Text(carModel),
//                                   );
//                                 }).toList(),
//                                 onChanged: (String? newValue) {
//                                   internalMaintenanceController.selectedCar.value =
//                                       newValue!;
//                                 },
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                             height: 50,
//                             width: 350,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Color.fromARGB(255, 189, 167, 198),
//                                       blurRadius: 5,
//                                       offset: Offset(0.5, 0.5))
//                                 ]),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 SizedBox(width: 5),
//                                 SmallText(
//                                   text: 'day',
//                                   color: Colors.grey,
//                                 ),
//                                 SizedBox(width: 90),
//                                 SmallText(
//                                   text: internalMaintenanceController
//                                               .selectedDate.value ==
//                                           null
//                                       ? ' '
//                                       : internalMaintenanceController
//                                           .formattedDate.value,
//                                   color: Colors.black,
//                                 ),
//                                 IconButton(
//                                   onPressed: () {
//                                     internalMaintenanceController
//                                         .selectDate(context);
//                                   },
//                                   icon: Icon(Icons.date_range_sharp),
//                                 ),
//                               ],
//                             )),
//                         SizedBox(
//                           height: 50,
//                         ),
//                         Container(
//                           height: 50,
//                           width: 350,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(10),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Color.fromARGB(255, 189, 167, 198),
//                                     blurRadius: 5,
//                                     offset: Offset(0.5, 0.5))
//                               ]),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               SmallText(
//                                 text: 'time',
//                                 color: Colors.grey,
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               DropdownButton<String>(
//                                   value: internalMaintenanceController
//                                       .selectedTime.value,
//                                   items:generateTimeList(),
//                                   onChanged: (String? newValue) {
//                                     internalMaintenanceController
//                                         .selectedTime.value = newValue!;
//                                   }),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 FlexButton(
//                   text: 'confirm order',
//                   onTap: () {
//                     showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: Text('تم إرسال الطلب بنجاح'),
//                             content: Text('يرجى الالتزام بالموعد المحدد'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: TextButton(
//                                   child: Text(
//                                     'موافق',
//                                     style: TextStyle(color: AppColors.darkPurple),
//                                   ),
//                                   onPressed: () {
//                                     Get.to(MyOrdersPage());
//                                   },
//                                 ),
//                               ),
//                             ],
//                           );
//                         });
//                   },
//                   color: AppColors.darkPurple,
//                   width: 200,
//                   textColor: Colors.white,
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
//   List<DropdownMenuItem<String>> generateTimeList() {
//     List<DropdownMenuItem<String>> items = [];
//     DateTime startTime = DateTime(2024, 1, 1, 9);
//     DateTime endTime = DateTime(2024, 1, 1, 21);
//
//     while (startTime.isBefore(endTime)) {
//       String time = '${startTime.hour}:${startTime.minute.toString().padLeft(2, '0')} ${startTime.hour < 12 ? 'AM' : 'PM'}';
//       items.add(DropdownMenuItem<String>(
//         value: time,
//         child: Text(time),
//       ));
//       startTime = startTime.add(Duration(minutes: 30));
//     }
//     // listTimes.value = items;
//     return items;
//   }
// }
