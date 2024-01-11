import 'dart:async';

import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/controller/authController.dart';
import 'package:cine_stream_ui/screen/auth_Screen/auth_screen.dart';
import 'package:cine_stream_ui/screen/multi_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/image.dart';

class splasScreen extends StatefulWidget {
  const splasScreen({super.key});

  @override
  State<splasScreen> createState() => _splasScreenState();
}

class _splasScreenState extends State<splasScreen> {
  final AuthController authController = Get.find();

  Timer? _timer;

  void initState() {
    super.initState();

    _timer = Timer(
      Duration(seconds: 2),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) =>
                authController.isLoggedIn.value ? MultiPage() : AutuScreen(),
          ),
          (route) => false),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: BackAppColors,
      ),
      child: Image.asset(ImagesplasScreen),
    );
  }
}
