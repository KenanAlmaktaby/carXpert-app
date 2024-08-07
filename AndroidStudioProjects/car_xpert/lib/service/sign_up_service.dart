import 'dart:convert';

import 'package:carxpert/config/server_config.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  var url = Uri.parse(ServerConfig.domainNameServer + ServerConfig.signUpApi);
  var message = '';

  Future<bool> signUpApi (
      var firstName , var lastName , var email ,var phoneNumber, var password,var account_type,var c_password
      ) async{
    var response = await http.post(
        url ,
        body: {
          'first_name':firstName,
          'last_name':lastName,
          'email':email,
          'phone_number':phoneNumber,
          'password':password,
          'Account_Type':account_type,
          'c_password':c_password

        },
        // headers: {
        //   'Authorization': 'Bearer ${OwnerInformation.ownerToken}'
        // }
    );
    print(response.statusCode);
    print(response.body);
    if(response.statusCode == 200){
      var jsonResponse = jsonDecode(response.body);
      message = '${jsonResponse['message']}';
      return true;
    }
    else{
      message = 'Server Error!!';
      return false;
    }
  }
}
