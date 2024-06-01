import 'package:darkmodegetx/features/features/login/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(LoginPageController());
  }

}