import 'package:darkmodegetx/features/features/Signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController>{
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor:  Colors.lightGreen,
      ),
      body: SafeArea(
        child: Form(
          child: (
          Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Mobile No"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name"
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password"
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(onPressed: (){}, child: Text("Register"))
              ],
          )
          ),
        ),
      ),
    );
  }

}