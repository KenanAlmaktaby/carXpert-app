import 'package:carxpert/data/models/general_model/general_model.dart';
import 'package:carxpert/service/rent_cars_service.dart';
import 'package:get/get.dart';

class RentCarsController extends GetxController{

  List<Datum> rentCarsList = [];
  RentCarsService rentCarsService = RentCarsService();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    // token pass for function
    rentCarsList = await rentCarsService.getAllCarsForRent();
    isLoading(false);
    super.onReady();
  }
}