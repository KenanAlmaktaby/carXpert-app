import 'package:carxpert/domain/controller/accessory_controller.dart';
import 'package:carxpert/ui/style/widgets/accessory_custom_list.dart';
import 'package:carxpert/ui/style/widgets/header_with_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AccessoryPage extends StatelessWidget {
  AccessoryController accessoryController = Get.put(AccessoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity.h,
        child: Column(
          children: [
            HeaderWithIcons(
              title: 'Accessories',
              searchFunction: () {},
              isAccessory: true,
            ),
            Expanded(
              child: Obx(
                () => accessoryController.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      )
                    : AccessoryCostumeList(
                        list: accessoryController.accessoriesList,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
