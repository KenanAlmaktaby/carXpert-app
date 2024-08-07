import 'package:carxpert/domain/getx_bindings/accessory_binding.dart';
import 'package:carxpert/domain/getx_bindings/accessory_details_binding.dart';
import 'package:carxpert/domain/getx_bindings/book_car_binding.dart';
import 'package:carxpert/domain/getx_bindings/car_details_binding.dart';
import 'package:carxpert/domain/getx_bindings/rent_search_binding.dart';
import 'package:carxpert/domain/getx_bindings/sale_search_binding.dart';
import 'package:carxpert/domain/getx_bindings/splash_binding.dart';
import 'package:carxpert/ui/pages/accessory/accessory_page.dart';
import 'package:carxpert/ui/pages/accessory_details/accessory_details_page.dart';
import 'package:carxpert/ui/pages/book_car/book_car_page.dart';
import 'package:carxpert/ui/pages/external_maintenance/external_maintenance_page.dart';
import 'package:carxpert/ui/pages/home/home_page.dart';
import 'package:carxpert/ui/pages/main_home/main_home_page.dart';
import 'package:carxpert/ui/pages/maintenance_choose/maintenance_choose_page.dart';
import 'package:carxpert/ui/pages/my_orders/my_orders_page.dart';
import 'package:carxpert/ui/pages/order_details/order_details_page.dart';
import 'package:carxpert/ui/pages/payment/payment_page.dart';
import 'package:carxpert/ui/pages/rent_cars/rent_cars_page.dart';
import 'package:carxpert/ui/pages/rent_search/rent_search_page.dart';
import 'package:carxpert/ui/pages/sale_cars/sale_cars_page.dart';
import 'package:carxpert/ui/pages/sale_search/sale_search_page.dart';
import 'package:carxpert/ui/pages/sign_in/sign_in_page.dart';
import 'package:carxpert/ui/pages/sign_up/sign_up_page.dart';
import 'package:carxpert/ui/pages/splash/splash_page.dart';
import 'package:carxpert/ui/style/themes/app_themes.dart';
import 'package:carxpert/ui/style/themes/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

import 'ui/pages/sale_car_details/sale_car_details_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Stripe.instance.applySettings();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes().lightMode,
          darkTheme: AppThemes().darkMode,
          themeMode: ThemeService().getThemeMode(),
          home: SplashPage(),
          getPages: [
            GetPage(name: '/splash', page: ()=> SplashPage() ,  binding: SplashBinding()),
            GetPage(name: '/SignUp', page: ()=> SignUpPage()),
            GetPage(name: '/SignIn', page: ()=> SignInPage()),
            GetPage(name: '/Home', page: ()=> HomePage()),
            GetPage(name: '/MainHome', page: ()=> MainHomePage() ),
            GetPage(name: '/RentCars', page: () => RentCarsPage() ,bindings:[CarDetailsBinding(),RentSearchBinding()]),
            GetPage(name: '/CarDetails', page: () => SaleCarDetailsPage()  ,bindings: [CarDetailsBinding()]),
            GetPage(name: '/RentSearch', page: ()=> RentSearchPage() ,bindings: [RentSearchBinding()]),
            // GetPage(name: '/BookCar', page: ()=> BookCarPage() ,bindings: [BookCarBinding()] ),
            GetPage(name: '/SaleCars', page: ()=> SaleCarsPage() ,bindings: [CarDetailsBinding(),SaleSearchBinding()]),
            GetPage(name: '/SaleSearch', page: ()=> SaleSearchPage() ,bindings: [SaleSearchBinding()]),
            GetPage(name: '/Accessory', page: ()=> AccessoryPage() , bindings: [AccessoryBinding() , AccessoryDetailsBinding()]),
            GetPage(name: '/AccessoryDetails', page: ()=> AccessoryDetailsPage() , bindings: [AccessoryDetailsBinding()]),
            // GetPage(name: '/MyOrders', page: ()=> MyOrdersPage()),
            // GetPage(name: '/OrderDetails', page: ()=> OrderDetailsPage()),
            // GetPage(name: '/MaintenanceChoose', page: ()=> MaintenanceChoosePage()),
            // GetPage(name: '/InternalMaintenance', page: ()=> InternalMaintenancePage()),
            GetPage(name: '/ExternalMaintenance', page: ()=> ExternalMaintenancePage()),
          ],
          builder: EasyLoading.init(),
        );
      },
    );
  }
}