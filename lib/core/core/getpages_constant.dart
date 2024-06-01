import 'package:darkmodegetx/core/core/RouteConstant.dart';
import 'package:darkmodegetx/features/features/FormAdd/binding/formadd_binding.dart';
import 'package:darkmodegetx/features/features/FormAdd/view/formadd_page.dart';
import 'package:darkmodegetx/features/features/Signup/binding/signup_binding.dart';
import 'package:darkmodegetx/features/features/Signup/view/signup_page.dart';
import 'package:darkmodegetx/features/features/home/binding/home_binding.dart';
import 'package:darkmodegetx/features/features/home/view/home_page.dart';
import 'package:darkmodegetx/features/features/login/binding/login_binding.dart';
import 'package:darkmodegetx/features/features/login/view/login_page.dart';
import 'package:get/get.dart';

List<GetPage>getPages=[

GetPage(name: RouteConstant.home,
    page: () => const HomePage(),
    binding: HomePageBinding() ),

  GetPage(name: RouteConstant.login,
      page: () => const LoginPage(),
      binding: LoginPageBinding()),

  GetPage(name: RouteConstant.signup,
      page: () => const SignUpPage(),
      binding: SignUpBinding()),

  GetPage(name: RouteConstant.formAdd,
      page: () => const FormAddPage(),
  binding: FormAddBinding()),
];