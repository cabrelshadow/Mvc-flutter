import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket/src/features/core/screens/dashboard/dashboard.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
Column LoginFooterWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('OR'),
      SizedBox(height: tDefauldSize -20.0,),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(onPressed:(){
          Get.to(Dashboard());
        } ,
          style: ElevatedButton.styleFrom(
            backgroundColor: btnBorder,
          ),
          child:Text(tLogin.toUpperCase()),
        ),
      ),
      SizedBox(height: tDefauldSize -10.0,),
      SizedBox(
        width: double.infinity,
         height: 50,

        child: OutlinedButton.icon(onPressed: (){

        },
            icon:Image(image: AssetImage( iconLogin),width:20.0 ,),
            style: OutlinedButton.styleFrom(
                foregroundColor: btnBorder,
                side: BorderSide(color: btnBorder)
            ),
            label: Text(tSignInWithGoogle,style: GoogleFonts.poppins(fontSize: 18),)
        ),
      ),
      SizedBox(height: tDefauldSize -20.0,),
      TextButton(onPressed: (){},
        style: TextButton.styleFrom(
          foregroundColor: btnBorder,

        ), child: Text.rich(
            TextSpan(
                text: tAlreadyHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                      text: tSignup,
                      style: TextStyle(color: btnBorder)
                  )
                ]
            )
        ),
      )
    ],
  );
}