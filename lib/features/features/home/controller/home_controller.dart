import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:darkmodegetx/core/core/globals.dart' as globals;

class HomePageController extends GetxController{


@override
  Future<void> onInit() async{
  var prefs = await SharedPreferences.getInstance();
  globals.newNameValue.value = await prefs.getString("name")??'no name';
  globals.newSchoolValue.value = await prefs.getString("school")??'no school';
  globals.newCityValue.value = await prefs.getString("city")??'no city';
  super.onInit();

}


}