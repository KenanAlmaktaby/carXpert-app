import 'package:carxpert/domain/controller/sale_cars_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HeaderWithIcons extends StatelessWidget {
  String title;
  var searchFunction;
  bool isAccessory;
  SaleCarsController saleCarsController = Get.put(SaleCarsController());
  HeaderWithIcons({
    required this.title,
    required this.searchFunction,
    required this.isAccessory,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsetsDirectional.all(10.sp),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10.sp),
            color: Theme.of(context).colorScheme.onSurface,
          ),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 10.sp,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 18.sp),
      ),
      actions: [
        IconButton(
          onPressed: searchFunction,
          icon: Icon(Icons.search_outlined,
              color: Theme.of(context).colorScheme.primary, size: 16.sp),
        ),
        PopupMenuButton(
          iconSize: 15.sp,
          icon: Icon(
            Icons.filter_alt,
            color: Theme.of(context).colorScheme.primary,
          ),
          itemBuilder: (context) => isAccessory
              ? [
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[2]),
                    value: saleCarsController.choices[2],
                  ),
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[3]),
                    value: saleCarsController.choices[3],
                  )
                ]
              : [
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[0]),
                    value: saleCarsController.choices[0],
                  ),
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[1]),
                    value: saleCarsController.choices[1],
                  ),
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[2]),
                    value: saleCarsController.choices[2],
                  ),
                  PopupMenuItem<String>(
                    child: Text(saleCarsController.choices[3]),
                    value: saleCarsController.choices[3],
                  ),
                ],
          onSelected: (String newValue) {
            saleCarsController.getSorted(newValue);
          },
        ),
      ],
    );
  }
}
