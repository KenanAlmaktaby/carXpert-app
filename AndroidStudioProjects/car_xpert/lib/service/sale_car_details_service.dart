import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/data/models/car_color_model/car_color_model.dart';
import 'package:carxpert/data/models/sale_car_model/sale_car_model.dart';
import 'package:http/http.dart' as http;

class SaleCarDetailsService{
  var message ;


  Future<List<ColorCarQuantity>> getAllCarColors(int carId)async{
    var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.getColorsByCarId+'${carId}');
    var response = await http.get(url,);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var colorsCarList = carColorModelFromJson(response.body);
      return colorsCarList.colors;

    } else {
      print('false');
      return [];
    }
  }

  Future<SaleCarModel?> getSaleCar(int carId)async{
    var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.getSaleCarById+'${carId}');
    var response = await http.get(url,);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var saleCarList = saleCarModelFromJson(response.body);
      return saleCarList;

    } else {
      print('false');
      return null;
    }
  }
}