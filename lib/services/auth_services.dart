import 'dart:convert';
import 'dart:developer';

import 'package:choplife/components/endpoints.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:choplife/route.dart' as route;

import '../components/app_imports.dart';
import '../main.dart';

class AuthService extends GetxController {
  var isLoading = false.obs;

  Future login({
    required Map userDetails,
  }) async {
    try {
      var body = json.encode(userDetails);
      // print("body ==> $body");
      var url = Endpoints.login;
      isLoading(true);
      log(isLoading.value.toString());
      var response = await http.post(Uri.parse(url), body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'Accept-Encoding': "gzip, deflate, br",
        "Connection": "keep-alive",
        'platform': platform
      }).timeout(const Duration(seconds: 300));
      isLoading(false);
      log(isLoading.value.toString());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      log("login request =====>> $body");
      log(response.statusCode.toString());
      var mybody = response.body;

      var decode = jsonDecode(mybody);
      var access = decode["access"];
      var message = decode["message"];
      var status = decode["status"];
      // json.decode(response.body);

      if (response.statusCode == 200) {
        log(response.body);
        prefs.setString("token", access);
        Get.offNamed(route.navigationPage);
        log("token is ${prefs.getString("token")}");
      } else if (response.statusCode == 401) {
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      } else {
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      }
    } catch (e) {
      isLoading(false);
      log('exception ====>>> $e');
    }
  }

  Future signup({
    required Map userDetails,
  }) async {
    try {
      var body = json.encode(userDetails);
      // print("body ==> $body");
      var url = Endpoints.register;
      isLoading(true);
      log(isLoading.value.toString());
      var response = await http.post(Uri.parse(url), body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'Accept-Encoding': "gzip, deflate, br",
        "Connection": "keep-alive",
        'platform': platform
      }).timeout(const Duration(seconds: 300));
      isLoading(false);
      log(isLoading.value.toString());
      SharedPreferences prefs = await SharedPreferences.getInstance();
      log("signup request =====>> $body");
      log(response.statusCode.toString());
      var mybody = response.body;

      var decode = jsonDecode(mybody);
      log(decode.toString());
      // json.decode(response.body);
      var message = decode['message'];
      log(message.toString());
      var status = decode['status'];

      if (response.statusCode == 200) {
        log(response.body);
        Get.offNamed(route.loginPage);
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.green);
      } else if (response.statusCode == 401) {
        print(response.statusCode);
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      } else {
        print(response.statusCode);
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      }
    } catch (e) {
      isLoading(false);
      log('exception ====>>> $e');
      Get.snackbar('', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.pinkAccent);
    }
  }

  Future forgotpassword({
    required Map userDetails,
  }) async {
    try {
      var body = json.encode(userDetails);
      // print("body ==> $body");
      var url = Endpoints.forgotPassword;
      isLoading(true);
      log(isLoading.value.toString());
      var response = await http.post(Uri.parse(url), body: body, headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
        'Accept-Encoding': "gzip, deflate, br",
        "Connection": "keep-alive",
        'platform': platform
      }).timeout(const Duration(seconds: 300));
      isLoading(false);
      log(isLoading.value.toString());

      log("forgot password request =====>> $body");
      log(response.statusCode.toString());
      var mybody = response.body;

      var decode = jsonDecode(mybody);
      log(decode.toString());
      // json.decode(response.body);
      var message = decode['message'];
      log(message.toString());
      var status = decode['status'];

      if (response.statusCode == 200) {
        log(response.body);
        Get.offNamed(route.loginPage);
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.green);
      } else if (response.statusCode == 401) {
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      } else {
        Get.snackbar(status.toString(), message,
            colorText: Colors.white, backgroundColor: Colors.pinkAccent);
      }
    } catch (e) {
      isLoading(false);
      log('exception ====>>> $e');
      Get.snackbar('', e.toString(),
          colorText: Colors.white, backgroundColor: Colors.pinkAccent);
    }
  }
}
