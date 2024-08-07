import 'package:carxpert/domain/controller/home_controller.dart';
import 'package:carxpert/ui/pages/main_home/main_home_page.dart';
import 'package:carxpert/ui/pages/maintenance_choose/maintenance_choose_page.dart';
import 'package:carxpert/ui/pages/my_orders/my_orders_page.dart';
import 'package:carxpert/ui/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget{

  HomeController homeController= Get.put(HomeController());

  final List<Widget> _screens = [
    MainHomePage(),
    MyOrdersPage(),
    MaintenanceChoosePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
        backgroundColor:Theme.of(context).colorScheme.background ,
          body: _screens[homeController.currentIndex.value],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground,
              borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20.sp) , topEnd: Radius.circular(20.sp)) ,
            ),
            // color: Theme.of(context).colorScheme.onBackground,
            child: Padding(
              padding:EdgeInsetsDirectional.symmetric(horizontal:  5.w , vertical: 1.h),
              child: GNav(
                gap: 10.sp,
                backgroundColor: Theme.of(context).colorScheme.onBackground,
                color: Theme.of(context).colorScheme.onSecondary,
                activeColor: Theme.of(context).colorScheme.inversePrimary,
                tabBackgroundColor: Theme.of(context).colorScheme.primary,
                padding: EdgeInsetsDirectional.all(8.sp),
                onTabChange: (index){
                  homeController.changeIndex(index);
                },
                tabs: [
                  GButton(icon: FontAwesomeIcons.house,iconSize: 12.sp,//Icons.home,
                    text: 'Home',textSize: 15.sp,
                  ),
                  GButton(icon: FontAwesomeIcons.listCheck,iconSize: 12.sp,//Icons.receipt,
                    text: 'Orders',textSize: 15.sp,
                  ),
                  GButton(icon: Icons.engineering_rounded,iconSize: 15.sp,
                    text: 'Maintenance',textSize: 15.sp,
                  ),
                  GButton(icon: Icons.person,iconSize: 15.sp,
                    text: 'profile',textSize: 15.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
