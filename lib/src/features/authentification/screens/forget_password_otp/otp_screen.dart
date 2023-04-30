import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket/src/constants/colors.dart';
import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';
class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefauldSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tOtpTitle,style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color:btnBorder,

                ),),
                Text(tOtpsubitle ,style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
                  ),
                SizedBox(height: 40.0,),
                Text("$tOtpMessage sianou93@gmail.com",textAlign: TextAlign.center,style: GoogleFonts.montserrat(
                  fontSize: 19,
                  color: Colors.black87
                ),),
                SizedBox(height: 40.0,),
                OtpTextField(
                 numberOfFields:6 ,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  onSubmit: (code){
                   print("OTP is this =>$code");
                  },

                ),
                SizedBox(height: 40.0,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child:
                  ElevatedButton(onPressed: (){

                  },

                    style: OutlinedButton.styleFrom(
                        backgroundColor: btnBorder,
                        side: BorderSide(color: btnBorder)
                    ),
                    child: Text("Send",style: GoogleFonts.poppins(fontSize: 18),),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
