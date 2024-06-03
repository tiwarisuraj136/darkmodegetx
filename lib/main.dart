import 'package:darkmodegetx/core/core/RouteConstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/core/getpages_constant.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final ThemeData darkThemeApp = ThemeData(
    hintColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ),
  );

  final ThemeData lightThemeApp = ThemeData(
    hintColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightThemeApp,
      darkTheme: darkThemeApp,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,

      getPages: getPages,
      initialRoute: RouteConstant.login,
    );
  }
}


