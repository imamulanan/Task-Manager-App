import 'dart:typed_data';

import 'package:shared_preferences/shared_preferences.dart';


String DefaultProfilePic="";

Future<void> WriteUserData(UserData) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', UserData['token']);
  await prefs.setString('email', UserData['data']['email']);
  await prefs.setString('firstName', UserData['data']['firstName']);
  await prefs.setString('lastName',UserData['data']['lastName']);
  await prefs.setString('mobile', UserData['data']['mobile']);
  await prefs.setString('photo', UserData['data']['photo']);
}

Future<void> WriteEmailVerification(Email) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('EmailVerification', Email);
}

Future<void> WriteOTPVerification(OTP) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(Key) async {
  final prefs = await SharedPreferences.getInstance();
  String? mydata= await prefs.getString(Key);
  return mydata;
}


Future<bool> RemoveToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  return true;
}

// ShowBase64Image(Base64String){
//   UriData? data= Uri.parse(Base64String).data;//URI= Univershal Resource Identifier
//   Uint8List MyImage= data!.contentAsBytes();
//   return MyImage;
// }

Uint8List ShowBase64Image(String? base64String) {
  if (base64String == null || base64String.isEmpty) {
    return Uint8List(0); // খালি ইমেজ
  }

  UriData? data = Uri.parse(base64String).data;
  if (data == null) {
    return Uint8List(0); // যদি ডাটা null হয়
  }

  return data.contentAsBytes();
}
