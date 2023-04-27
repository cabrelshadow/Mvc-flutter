import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiket/src/features/authentification/screens/on_boarding/on_boarding_screen.dart';
import 'package:tiket/src/features/authentification/screens/welcome/welcome_screen.dart';


class SplashScreenController extends GetxController{
  static SplashScreenController  get find => Get.find();
  RxBool  animate=false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
animate.value =true;
    await Future.delayed(Duration(milliseconds: 3000));
    Get.to(WelcomePage());
//Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomePage(),);
  }
}

