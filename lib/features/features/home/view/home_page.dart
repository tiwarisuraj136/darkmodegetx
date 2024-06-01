import 'package:darkmodegetx/core/core/RouteConstant.dart';
import 'package:darkmodegetx/features/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("HomePage"),
     backgroundColor: Colors.teal,),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Obx(
                 () => Text(
               'Click on switch to change to ${controller.isLightTheme.value ? 'Dark' : 'Light'} theme',
             ),
           ),
           Obx(
                 () => Switch(
               value: controller.isLightTheme.value,
               onChanged: controller.toggleTheme,
             ),
           ),
         ],
       ),
     ),

     floatingActionButton: FloatingActionButton(onPressed: () {
       print("hello i am here line 16");
       Get.toNamed(RouteConstant.formAdd);
     },
     child: const Icon(Icons.add),),
   );
  }

}