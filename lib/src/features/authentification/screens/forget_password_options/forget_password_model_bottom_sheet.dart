import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forget_password_mail/forget_password_mail.dart';
import 'forgot_password_btn_widget.dart';
class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(

      context: context,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
      builder: (context)=>Container(
        padding: EdgeInsets.all(tDefauldSize),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle, style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 19)),
            Text(tForgetPasswordSubTitle, style: GoogleFonts.poppins(fontSize: 16)),
            SizedBox(height: 30.0,),
            ForgetPasswordBtnWiget(
              btnIcon: Icons.mail_outline_outlined,
              title: tEmail,
              subTitle: tResetViaEMail,
              onTap: (){
                Navigator.pop(context);
                Get.to( ForgetPasswordMailScreen());
              },
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
  }

}

