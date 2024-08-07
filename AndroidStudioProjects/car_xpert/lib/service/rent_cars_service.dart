import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/data/models/general_model/general_model.dart';

import 'package:http/http.dart' as http;

class RentCarsService{
  var message;

  var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.showRentCars);

  Future<List<Datum>> getAllCarsForRent() async{
    var response = await http.get(url,

    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var rentCars = generalModelFromJson(response.body);
      return rentCars.data;

    } else {
      print('false');
      return [];
    }
  }
}