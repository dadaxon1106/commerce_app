import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/account_model.dart';
import '../models/user_model.dart';

class PrefsService{
  static storeName(String name) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }
  static Future<String?> loadUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }
  
  static storeUser(User user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    await prefs.setString('user', stringUser);
  }

  static Future<User?> loadEmail() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString('user');
    if(stringUser==null) return null;
    Map<String,dynamic> json = jsonDecode(stringUser);

    return User.fromJson(json);
  }
}