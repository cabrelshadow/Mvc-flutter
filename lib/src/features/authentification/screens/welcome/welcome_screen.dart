import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket/src/constants/colors.dart';
import 'package:tiket/src/constants/image_string.dart';
import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';
import 'package:tiket/src/features/authentification/screens/login/login_screen.dart';
import 'package:tiket/src/features/authentification/screens/registration/signup_screen.dart';
class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightscreen=MediaQuery.of(context).size.height;
    return Scaffold(
     body: Container(
       padding: EdgeInsets.all(tDefauldSize),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Image(image: AssetImage(welcomeImage),height: heightscreen * 0.6,),
           Column(
             children: [
               Text(welcomeTitle,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22)),
               Text(welcomeSubTitle2,style: GoogleFonts.poppins(fontSize: 17),textAlign: TextAlign.center,),
             ],
           ),

           Row(
             children: [
               Expanded(
                   child:
                     OutlinedButton(
                         onPressed:(){
                           Get.to(LoginScreen());
                         },
                       style: OutlinedButton.styleFrom(
                         shape: RoundedRectangleBorder(),
                         foregroundColor: btnBorder,
                         side: BorderSide(color: btnBorder),
                         padding: EdgeInsets.symmetric(vertical: tButtonHeight)

                       ),
                       child: Text("login".toUpperCase()
                     ),
                   ),
               ),
               SizedBox(width: 10.0,),
               Expanded(
                   child:
                   ElevatedButton(
                     onPressed:()=>Get.to(SignupScreen()),
                     style: ElevatedButton.styleFrom(
                       elevation: 0,
                       shape:  RoundedRectangleBorder(),
                       foregroundColor: tWhiteColor,
                         backgroundColor:  btnBorder,
                         side: BorderSide(color: tWhiteColor),
                         padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                     ),
                       child: Text("sign In".toUpperCase(),


                       ),
                   ),
               )
             ],
           )
         ],
       ),
     ),
    );
  }
}
