import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tDefauldSize),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label:Text(tFullName),
                  prefixIcon: Icon(Icons.person_2_outlined,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              decoration: InputDecoration(
                  label:Text(tEmail),
                  prefixIcon: Icon(Icons.email_outlined,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              decoration: InputDecoration(
                  label:Text(tPhoneNo),
                  prefixIcon: Icon(Icons.phone,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-20,),
            TextFormField(
              decoration: InputDecoration(
                  label:Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint,color: btnBorder,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: btnBorder),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0,color: btnBorder)
                  )

              ),

            ),
            SizedBox(height: tDefauldSize-10,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed:(){} ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnBorder,
                ),
                child:Text(tSignup.toUpperCase()),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
