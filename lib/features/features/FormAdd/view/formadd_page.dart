import 'package:darkmodegetx/features/features/FormAdd/controller/formadd_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormAddPage extends GetView<FormAddController>{
  const FormAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Form"),
        backgroundColor: Colors.teal,),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.name,
              decoration: const InputDecoration(
                  labelText: "Name"
              ),
            ),
            TextFormField(
              controller: controller.school,
              decoration: const InputDecoration(
                  labelText: "School"
              ),
            ),
            TextFormField(
              controller: controller.city,
              decoration: const InputDecoration(
                  labelText: "City"
              ),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: (){
                      controller.setAddValues();
                      Get.snackbar('Successful', 'Save values successful',backgroundColor: Colors.blueAccent);
                    }, child: const Text("Save")),
                ElevatedButton(
                    onPressed: (){
                      controller.getAddValues();
                      // Get.back();
                    }, child: const Text("Cancel")),
                ElevatedButton(
                    onPressed: (){
                      controller.removeAddValues();
                      Get.snackbar('Successful', 'Remove successful',backgroundColor: Colors.red);
                      // Get.back();
                    }, child: const Text("Remove")),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: const Icon(Icons.add),),
    );
  }

}