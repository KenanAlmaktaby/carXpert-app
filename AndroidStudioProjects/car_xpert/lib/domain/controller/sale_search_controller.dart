import 'package:carxpert/data/models/car_model/car_model.dart';
import 'package:carxpert/ui/pages/sale_cars/sale_cars_page.dart';
import 'package:get/get.dart';

class SaleSearchController extends GetxController{
  late Rx<List<CarModel>> foundCars = Rx<List<CarModel>>([]);


  @override
  void onInit() {
    super.onInit();
    foundCars.value = SaleCarsPage().cars;
  }

  void filterCars(String query) {
    List<CarModel> results = [];
    if (query.isEmpty ) {
      results = SaleCarsPage().cars;
    } else {
      results = SaleCarsPage().cars.where((car) {
        bool matchesCarModel = car.name.toLowerCase().contains(query.toLowerCase());
        bool matchesProductionYear = car.productionYear!.toLowerCase().contains(query.toLowerCase());
        bool matchesPrice = car.price.toString().toLowerCase().contains(query.toLowerCase());

        return matchesCarModel || matchesProductionYear || matchesPrice;
      }).toList();
    }
    foundCars.value = results;
  }
}