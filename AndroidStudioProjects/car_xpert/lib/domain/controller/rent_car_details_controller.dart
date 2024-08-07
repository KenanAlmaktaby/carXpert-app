import 'package:carxpert/data/models/rent_car_model/rent_car_model.dart';
import 'package:carxpert/service/rent_car_details_service.dart';
import 'package:get/get.dart';

class RentCarDetailsController extends GetxController {
  RxInt activeIndex = 0.obs;

  int carId=0;
  RentCarModel? rentCarModel ;
  RentCarData? car ;
  List<String> images =[];
  RentCarDetailsService rentCarDetailsService = RentCarDetailsService();
  RxBool isCarLoading = true.obs;

  RentCarDetailsController(int carId){
    this.carId = carId;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    rentCarModel = await rentCarDetailsService.getRentCar(carId);
    isCarLoading(false);
    car = rentCarModel!.carData;
    images = rentCarModel!.images;
    super.onReady();
  }

  void changeImage (int index){
    activeIndex.value = index ;
  }

}