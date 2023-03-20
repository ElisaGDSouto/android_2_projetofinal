// ignore_for_file: unused_import

import 'package:conversor_moeda/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';
import '../components/keyboard.dart';


// ignore: use_key_in_widget_constructors
class Conversor extends StatefulWidget {
  @override
  State<Conversor> createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {
  final Memory memoy = Memory();

  _onPressed(String acao){
    setState(() {
      memoy.applyComand(acao);     
    });
  }

  @override
    Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp
      ]);
      
      return MaterialApp(
        home: Column(
          children:  <Widget>[
            Display(memoy.value),
            Keyboard(_onPressed),             
             //Text ('Dolar'),
             //Text('Real'),
             //Text('Euro'),
             //Text('Resultado'),
             
          ],
        ),
      );
    }
}