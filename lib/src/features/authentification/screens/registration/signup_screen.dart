import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';
import 'package:tiket/src/features/authentification/screens/registration/signup_form_wiget.dart';

import '../../../../common_widgets/form_header_widget.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child:Container(
              padding: EdgeInsets.all(tDefauldSize),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                   children:  [
                     /* ---section 1 -----*/
                     FormHeaderWidget(
                         image: loginimage,
                         title: tSignUpTitle,
                         subTilte: tSignUpSubTitle,
                     ),
                     SignUpFormWidget(),
                     Column(
                      children: [


                        SizedBox(
                          width: double.infinity,
                          height: 50,

                          child: OutlinedButton.icon(onPressed: (){},
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
                                        text: tLogin,
                                        style: TextStyle(color: btnBorder)
                                    )
                                  ]
                              )
                          ),
                        ),
                      ],
                     ),
                   ],

               ),
          ),
        ),
      ),
    );
  }
}
