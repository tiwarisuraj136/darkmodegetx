import 'package:darkmodegetx/core/core/globals.dart' as globals;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormAddController extends GetxController{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
   TextEditingController name = TextEditingController();
   TextEditingController school = TextEditingController();
   TextEditingController city = TextEditingController();
   RxString names = ''.obs;
   RxString schools = ''.obs;
   RxString citys = ''.obs;

   // RxString newNameValue= ''.obs;
   // RxString newSchoolValue= ''.obs;
   // RxString newCityValue= ''.obs;

  @override
  void onInit(){
   // getAddValues();
   setAddValues();
   // removeAddValues();
   super.onInit();
  }

  Future<void> setAddValues() async {
    names.value =name.text;
    schools.value =school.text;
    citys.value =city.text;
    var prefs =  await SharedPreferences.getInstance();
    prefs.setString('name', names.value);
    await prefs.setString('school', schools.value);
    await prefs.setString('city', citys.value);
  }

  Future<void> getAddValues() async {

    var prefs = await SharedPreferences.getInstance();

     var getName = prefs.getString("name");
    var getSchool = prefs.getString("school");
    var getCity = prefs.getString("city");

    globals.newNameValue.value = getName ?? 'No Name Found';
    globals.newSchoolValue.value = getSchool ?? 'No School Found';
    globals.newCityValue.value = getCity ?? 'No City Found';

    Get.defaultDialog(
        title: 'Stored Values',
        content: Column(
          children: [
            Text(globals.newNameValue.value),
            Text(globals.newSchoolValue.value),
            Text(globals.newCityValue.value),
          ],
        )
    );

  }

  Future<void> removeAddValues() async {
    var prefs = await SharedPreferences.getInstance();
    var nameRemove =await prefs.remove('name');
    var schoolRemove =await prefs.remove('school');
    var cityRemove =await prefs.remove('city');

    print("hello i am here line 70");
    print(nameRemove);
    print(schoolRemove);
    print(cityRemove);
    print("hello i am here line 74");
  }




}