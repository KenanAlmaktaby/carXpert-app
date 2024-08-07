import 'dart:convert';
import 'package:carxpert/config/server_config.dart';
import 'package:carxpert/config/user_information.dart';
import 'package:carxpert/native_storage/secure_storage.dart';
import 'package:http/http.dart' as http;

class SignInService {
  var url = Uri.parse(ServerConfig.domainNameServer + ServerConfig.signInApi);
  var message = '';
  var token ;

  Future<bool> signInApi (var email , var password , bool checkBox) async{
    var response = await http.post(url,
      body: {
        'email':email,
        'password':password
      }
    );
    print(response.statusCode);
    print(response.body);
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body);
      message = '${jsonResponse['message']}'
          '\n welcome ${jsonResponse['data']['name']}';
      token=jsonResponse['data']['token'];
      UserInformation.USER_TOKEN=token;
      if(checkBox){
        SecureStorage storage=SecureStorage();
        await storage.save('token', UserInformation.USER_TOKEN);
        print('$token || ${UserInformation.USER_TOKEN}');
        UserInformation.user.name = jsonResponse['data']['name'];
        UserInformation.user.password = jsonResponse['data']['data']['password'];
        UserInformation.user.email = jsonResponse['data']['data']['email'];
      }
      return true;
    }
    else if (response.statusCode == 404){
      var jsonResponse = jsonDecode(response.body);
      message = '${jsonResponse['message']}!!'
          '\n ${jsonResponse['data']['error']}!';
      return false;
    }
    else{
      message = 'server Error!!';
      return false;
    }
  }
}
