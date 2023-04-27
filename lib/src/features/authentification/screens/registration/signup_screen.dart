import 'package:flutter/material.dart';

import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';

import '../../../../common_widgets/form_header_widget.dart';

import '../../../../constants/image_string.dart';
import '../login/login_footer_widget.dart';
import '../login/login_form_widget.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
            padding: EdgeInsets.all(tDefauldSize),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,

                 children: [
                   /* ---section 1 -----*/
                   FormHeaderWidget(
                       image: loginimage,
                       title: tSignUpTitle,
                       subTilte: tSignUpSubTitle,
                   ),
                   /* ---section 2 {FORM} -----*/
                   LoginForm(),
                   /* --- end-----*/
                   /* ---section 3 {footer form} -----*/
                   LoginFooterWidget(context)
                   /* ---end-----*/
                 ],

             ),
        ),
      ),
    );
  }
}
