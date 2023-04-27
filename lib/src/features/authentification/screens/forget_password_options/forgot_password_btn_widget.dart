import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ForgetPasswordBtnWiget extends StatelessWidget {
  const ForgetPasswordBtnWiget({
    required this.title,
    required this.subTitle,
    required this.btnIcon,
    required this.onTap,
    super.key,
  });
  final IconData btnIcon;
  final VoidCallback onTap;
  final String title,subTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10.0,),
            color: Colors.grey.shade200
        ) ,
        child: Row(
          children: [
            Icon(btnIcon, size: 40.0,),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16)),

                Text(subTitle, style: GoogleFonts.poppins(fontSize: 14)),

              ],
            )
          ],
        ),

      ),
    );
  }
}