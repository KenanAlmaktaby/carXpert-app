import 'package:carxpert/data/models/car_model/car_model.dart';
import 'package:carxpert/ui/pages/rent_cars/rent_cars_page.dart';
import 'package:get/get.dart';

class RentSearchController extends GetxController {
  late Rx<List<CarModel>> foundCars = Rx<List<CarModel>>([]);


  @override
  void onInit() {
    super.onInit();
    foundCars.value = RentCarsPage().cars;
  }

  void filterCars(String query) {
    List<CarModel> results = [];
    if (query.isEmpty ) {
      results = RentCarsPage().cars;
    } else {
      results = RentCarsPage().cars.where((car) {
        bool matchesCarModel = car.name.toLowerCase().contains(query.toLowerCase());
        bool matchesProductionYear = car.productionYear!.toLowerCase().contains(query.toLowerCase());
        bool matchesPrice = car.price.toString().toLowerCase().contains(query.toLowerCase());

        return matchesCarModel || matchesProductionYear || matchesPrice;
      }).toList();
    }
    foundCars.value = results;
  }
}
