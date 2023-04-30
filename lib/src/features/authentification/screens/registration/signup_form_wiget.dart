import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tiket/src/features/authentification/controller/signup_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignUpController());
    final _formKey=GlobalKey<FormState>();
    bool isLoading=false;

    return Container(
      padding: EdgeInsets.symmetric(vertical: tDefauldSize),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label:Text(tFullName),
                  prefixIcon: Icon(Icons.person_2_outlined,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label:Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label:Text(tPhoneNo),
                  prefixIcon: Icon(Icons.phone,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label:Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-10,),
            SizedBox(
              width: double.infinity,
              height: 50,

                child: ElevatedButton(onPressed:(){

                if(_formKey.currentState!.validate()){
  

                  SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                }
              } ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnBorder,
                ),
                child:Text(tSignup.toUpperCase()),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
