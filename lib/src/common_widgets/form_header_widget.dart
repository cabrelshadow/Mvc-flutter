import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/image_string.dart';
import '../constants/text_strings.dart';
class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({Key? key,
  required this.image,
    required this.title,
    required this.subTilte,

  }) : super(key: key);
    final  String image, title,subTilte;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        /* ---section 1 -----*/
        Image(image: AssetImage(image),height: size.height *0.2,),

        Text(title,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 22) ),
        Text(subTilte,style: GoogleFonts.poppins(fontSize: 17)),
        /* --- end -----*/

        /* ---section 2 {FORM} -----*/


        /* --- end-----*/

      ],

    );
  }
}
