import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
Form LoginForm() {
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

              onPressed:(){},
              child:
              Text(tForgetPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(onPressed:(){} ,
              style: ElevatedButton.styleFrom(
                backgroundColor: btnBorder,
              ),
              child:Text(tLogin.toUpperCase()),
            ),
          )

        ],
      ),
    ),
  );
}

