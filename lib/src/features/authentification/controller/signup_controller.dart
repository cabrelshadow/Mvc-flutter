import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tiket/src/repository/authentification_repository/authentification_repository.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=>Get.find();
  final email =TextEditingController();
  final password =TextEditingController();
  final fullName =TextEditingController();
  final phoneNo =TextEditingController();
  //appel cette  fontion dans le cote front du projet
  void registerUser(String email,String password){
         AuthentificationRepository.instance.createUserWithEmailAndPassword(email, password);

  }
}