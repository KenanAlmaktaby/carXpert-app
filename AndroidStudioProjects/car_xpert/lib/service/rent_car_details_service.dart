import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/data/models/rent_car_model/rent_car_model.dart';
import 'package:http/http.dart' as http;
class RentCarDetailsService{
  Future<RentCarModel?> getRentCar(int carId)async{
    var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.getRentCarById+'${carId}');
    var response = await http.get(url,);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var rentCar = rentCarModelFromJson(response.body);
      return rentCar;

    } else {
      print('false');
      return null;
    }
  }
}