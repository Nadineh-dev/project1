import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


class RegisterationController extends GetxController {
  TextEditingController fnameController = TextEditingController(); 
  TextEditingController lnameController = TextEditingController(); 
  TextEditingController emailController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController(); 
  TextEditingController phonenumberController = TextEditingController(); 
  TextEditingController numofchildrenController = TextEditingController(); 

  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  Future<void>registerWthEmail() async{
    try {
      var headers = {"Content-Type":"application/json"};
      var url = Uri.parse(ApiEndPoints.baseUrl+ApiEndPoints.authEndpoints.registerEmail);

      Map body= {
        "first_name": fnameController.text,
        "last_name":lnameController.text,
        "email":fnameController.text,
        "password":fnameController.text,
        "phonenumber": fnameController.text,
        "numofchildren":fnameController.text,
      };

      http.Response response = await http.post(url,body: jsonEncode(body),headers: headers);
      if(response.statusCode==200){
        
      }


    } catch (e) {
      
    }
    
  } 

}