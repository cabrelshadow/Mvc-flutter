import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';
import 'package:tiket/src/features/authentification/screens/forget_password_otp/otp_screen.dart';


import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  /* ---section 1 -----*/
                  SizedBox(height: tDefauldSize,),
                  Center(child: Image(image: AssetImage(loginimage),height: size.height *0.2,)),
                  SizedBox(height: tDefauldSize,),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                     children: [

                       Text(tForgetPassword,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22,), ),
                       Text(tForgetPasswordSubTitle,style: GoogleFonts.poppins(fontSize: 17) ,textAlign: TextAlign.center,),
                     ],
                    ),
                  ),
                  SizedBox(height: tDefauldSize,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 27),
                    child: Form(
                        child:
                        Column(

                          children: [
                            TextFormField(

                              decoration: InputDecoration(
                                  label:Text(tEmail),
                                  hintText: tEmail,
                                  prefixIcon: Icon(Icons.email_sharp,color: btnBorder,

                                  ),
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(color: btnBorder),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                                  ),
                              ),

                            ),
                            SizedBox(height: tDefauldSize,),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child:
                              ElevatedButton(onPressed: (){
                                  Get.to(OTPScreen());
                              },

                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: btnBorder,
                                      side: BorderSide(color: btnBorder)
                                  ),
                                  child: Text("Next",style: GoogleFonts.poppins(fontSize: 18),),

                              ),
                            ),
                          ],
                        ),
                    ),
                  )

                ],

              ),
          ),
        ),
      ),
    );
  }
}
