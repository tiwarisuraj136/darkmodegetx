import 'package:darkmodegetx/core/core/RouteConstant.dart';
import 'package:darkmodegetx/features/features/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController>{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: controller.FormKey,
               child: Column(
                 children: [
                   TextFormField(
                     controller: controller.userTextController,
                     decoration: const InputDecoration(labelText: "UserName"),
                     validator: (value){
                       if(value == null || value.isEmpty){
                         return "Please Enter Your UserName";
                       }
                       return null;
                     }
                   ),
                   TextFormField(
                     controller: controller.passwordTextController,
                     decoration: const InputDecoration(labelText: "Password"),
                     validator: (value){
                       if(value == null || value.isEmpty){
                         return "Please Enter Your Password";
                       }
                       return null;
                     },
                   ),
                   const SizedBox(height: 15.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       ElevatedButton(onPressed: (){
                        Get.toNamed(RouteConstant.home);
                       }, child: const Text("Login")),

                       ElevatedButton(onPressed: (){
                         Get.toNamed(RouteConstant.signup);                         }, child: const Text("Sign Up")),
                     ],
                   )
                 ],
               ),

            )
          ],
        ),
      )

    );
  }



}