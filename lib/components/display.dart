// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
//import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  

  final String text;

  
   // ignore: use_key_in_widget_constructors
   const Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // ignore: prefer_const_constructors
        color: Color.fromRGBO(48, 48, 48, 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0), 
              child: Text(
                text,
                //minFontSize: 20,
                //maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
                ),
            ),
          ],
        ),
    ),
    );
  }
}