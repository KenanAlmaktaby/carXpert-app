import 'package:carxpert/config/server_config.dart';
import 'package:http/http.dart' as http;

import '../data/models/accessory_general_model/accessory_general_model.dart';

class AccessoryService{
  var message;

  var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.showAccessories);

  Future<List<AccessoryDatum>> getAllAccessories() async{
    var response = await http.get(url,

    );
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var accessories = accessoryGeneralModelFromJson(response.body);
      return accessories.data;

    } else {
      print('false');
      return [];
    }
  }
}