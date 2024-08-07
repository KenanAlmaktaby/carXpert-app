import 'package:carxpert/data/models/general_model/general_model.dart';
import 'package:carxpert/service/sale_cars_service.dart';
import 'package:get/get.dart';

class SaleCarsController extends GetxController{

  List<Datum> saleCarsList = [];
  SaleCarsService saleCarsService = SaleCarsService();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async {
    // token pass for function
    saleCarsList = await saleCarsService.getAllCarsForSale();
    isLoading(false);
    super.onReady();
  }

  List<String> choices=[
    "up production year",
    "down production year",
    "up price",
    "down price"
  ];

  void getSorted(String choice){
    switch(choice){
      case "up production year":
        print("firsttttt1");
        break;
      case "down production year":
        print("firsttttt2222");
        break;
      case "up price":
        print("firsttttt3333");
        break;
      case "down price":
        print("firsttttt4444");
        break;
      default :
        print("erroorr");
        break;
    }
  }


}