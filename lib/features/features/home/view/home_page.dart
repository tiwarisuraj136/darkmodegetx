import 'package:darkmodegetx/core/core/RouteConstant.dart';
import 'package:darkmodegetx/features/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:darkmodegetx/core/core/globals.dart' as globals;

class HomePage extends GetView<HomePageController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("HomePage"),
     backgroundColor: Colors.teal,),
     body: Obx(()=>Column(
       children: [
         Text(globals.newNameValue.value),
         Text(globals.newSchoolValue.value),
         const Text('Suraj Tiwari'),
         Text(globals.newCityValue.value),
         const SizedBox(height: 10,),
         ElevatedButton(onPressed: (){
           Get.toNamed(RouteConstant.formAdd);
         }, child: const Text("Form Page"))

       ],
     ),) ,

     floatingActionButton: FloatingActionButton(onPressed: () {
       print("hello i am here line 16");
       Get.toNamed(RouteConstant.formAdd);
     },
     child: const Icon(Icons.add),),
   );
  }

}