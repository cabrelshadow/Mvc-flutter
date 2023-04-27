
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password_options/forgot_password_btn_widget.dart';
class  LoginForm extends StatelessWidget {
  const  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight -10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            TextField(
              decoration:  InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()

              ),
            ),
            SizedBox(  height: tFormHeight -20),
            TextField(
              decoration:  InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon:Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            SizedBox(  height: tFormHeight -20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: btnBorder,
                    textStyle: TextStyle(

                    )
                )
                ,

                onPressed:(){
                  showModalBottomSheet(

                      context: context,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
                      builder: (context)=>Container(
                        padding: EdgeInsets.all(tDefauldSize),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tForgetPasswordTitle, style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22)),
                        Text(tForgetPasswordSubTitle, style: GoogleFonts.poppins(fontSize: 18)),
                        SizedBox(height: 30.0,),
                        ForgetPasswordBtnWiget(
                          btnIcon: Icons.mail_outline_outlined,
                          title: tEmail,
                          subTitle: tResetViaEMail,
                          onTap: (){},
                        ),
                        SizedBox(height: 21.0,),
                        ForgetPasswordBtnWiget(
                          btnIcon: Icons.mobile_friendly_outlined,
                          title: tPhoneNo,
                          subTitle: tResetViaPhone,
                          onTap: (){},
                        ),

                      ],
                        ),
                      ),
                  );
                },
                child:
                Text(tForgetPassword),
              ),
            ),


          ],
        ),
      ),
    );
  }
}








