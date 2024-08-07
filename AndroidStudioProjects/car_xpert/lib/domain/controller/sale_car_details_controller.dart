import 'package:carxpert/data/models/car_color_model/car_color_model.dart';
import 'package:carxpert/data/models/sale_car_model/sale_car_model.dart';
import 'package:carxpert/service/sale_car_details_service.dart';
import 'package:get/get.dart';

class SaleCarDetailsController extends GetxController {
  RxInt activeIndex = 0.obs;

  int carId=0;
  List<ColorCarQuantity> colorsList =[];
  SaleCarModel? saleCarModel ;
  CarData? car ;
  List<String> images =[];
  SaleCarDetailsService saleCarDetailsService = SaleCarDetailsService();
  RxBool isCarLoading = true.obs;
  SaleCarDetailsController(int carId){
    this.carId = carId;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    saleCarModel = await saleCarDetailsService.getSaleCar(carId);
    colorsList  = await saleCarDetailsService.getAllCarColors(carId);
    isCarLoading(false);
    car = saleCarModel!.carData;
    images = saleCarModel!.images;
    super.onReady();
  }

  void changeImage (int index){
    activeIndex.value = index ;
  }

}