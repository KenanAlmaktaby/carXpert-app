import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/data/models/general_model/general_model.dart';
import 'package:http/http.dart' as http;

class SaleCarsService{
  var message;
  var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.showSaleCars);
  Future<List<Datum>> getAllCarsForSale() async{
    var response = await http.get(url,

    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var saleCars = generalModelFromJson(response.body);
      return saleCars.data;

    } else {
      print('false');
      return [];
    }
  }
}