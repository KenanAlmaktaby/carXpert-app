import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/config/user_information.dart';
import 'package:carxpert/data/models/reserved_days_model/reserved_days_model.dart';
import 'package:http/http.dart' as http;

class CalenderDateService {
  Future<List<String>> getReservedDays(int carId)async{
    var url = Uri.parse(ServerConfig.domainNameServer+ServerConfig.getReservedDays+'${carId}');
    var response = await http.get(url,
        headers: {
          'Authorization':'Bearer ${UserInformation.USER_TOKEN}',
        });
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var reservedDaysModel = reservedDaysModelFromJson(response.body);
      return reservedDaysModel.reservedDates;

    } else {
      print('false');
      return [];
    }
  }
}