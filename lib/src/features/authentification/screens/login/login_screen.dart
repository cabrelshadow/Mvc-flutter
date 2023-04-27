import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tiket/src/constants/image_string.dart';
import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/features/authentification/screens/login/login_form_widget.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_strings.dart';
import 'login_footer_widget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(

            padding: EdgeInsets.all(tDefauldSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* ---section 1 -----*/
                Image(image: AssetImage(loginimage),height: size.height *0.2,),

                Text(tLoginTitle,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22) ),
                Text(tLoginSubTitle,style: GoogleFonts.poppins(fontSize: 17)),
                /* --- end -----*/

                /* ---section 2 {FORM} -----*/

                  LoginForm(),
                LoginFooterWidget(context)
                /* --- end-----*/

              ],
            ),
          ),
        ),
      ),
    );
  }


}