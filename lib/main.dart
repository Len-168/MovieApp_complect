import 'package:cine_stream_ui/controller/authController.dart';
import 'package:cine_stream_ui/screen/auth_Screen/auth_screen.dart';
import 'package:cine_stream_ui/screen/multi_page.dart';
import 'package:cine_stream_ui/screen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splas',
      getPages: [
        GetPage(name: '/splas', page: () => splasScreen()),
        GetPage(name: '/login', page: () => AutuScreen()),
        GetPage(name: '/home', page: () => MultiPage()),
      ],
    );
  }
}
