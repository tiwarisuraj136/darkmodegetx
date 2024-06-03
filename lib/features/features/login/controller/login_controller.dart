import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController{

  final FormKey = GlobalKey<FormState>();
  final userTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  RxBool isLightTheme = false.obs;

  @override
  void onInit() {
    super.onInit();
    getThemeStatus();
    print('isLightThemeline16');
    print(isLightTheme);
    print('isLightTheme line 18');
  }
  Future<void> getThemeStatus() async {
    var prefs = await SharedPreferences.getInstance();
    isLightTheme.value = prefs.getBool('theme') ?? true;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
    print('isLightThemeline25');
    print(isLightTheme);
    print('isLightTheme line 27');
  }
  void toggleTheme(bool value) {
    isLightTheme.value = value;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);


    print('isLightThemeline29');
    print(isLightTheme);
    print('isLightTheme line 31');


     saveThemeStatus();
  }
  Future<void> saveThemeStatus() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', isLightTheme.value);
  }
}