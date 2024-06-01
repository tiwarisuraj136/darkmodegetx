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
  }
  Future<void> getThemeStatus() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefs = await SharedPreferences.getInstance();
    isLightTheme.value = prefs.getBool('theme') ?? true;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  }
  void toggleTheme(bool value) {
    isLightTheme.value = value;
    Get.changeThemeMode(isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
    saveThemeStatus();
  }
  Future<void> saveThemeStatus() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', isLightTheme.value);
  }
}