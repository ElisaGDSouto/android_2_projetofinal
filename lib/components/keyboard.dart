import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  

  final void Function(String) comand;
  Keyboard(this.comand);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
            
              ButtonRow([
              Button.big(text: 'AC', color: Button.Dark , comand:comand),
              Button.Operation(text: '=', color: Button.Dark, comand:comand),
             
            ]),
            SizedBox(height: 2,),
            ButtonRow([
              Button(text: '7', comand:comand),
              Button(text: '8', comand:comand),
              Button(text: '9', comand:comand),
              Button.Operation(text: 'USD', comand:comand),

            ]),
              SizedBox(height: 2,),
              ButtonRow([
              Button(text: '4', comand:comand),
              Button(text: '5', comand:comand),
              Button(text: '6', comand:comand),
              Button.Operation(text: 'BTC', comand:comand),

            ]),
            SizedBox(height: 2,),
              ButtonRow([
              Button(text: '1', comand:comand),
              Button(text: '2', comand:comand),
              Button(text: '3', comand:comand),
              Button.Operation(text: '€', comand:comand),
            ]),
            SizedBox(height: 2,),
             ButtonRow([
              Button.big(text: '0', comand:comand),
              Button(text: ',', comand:comand),
              Button.Operation(text: 'BR', comand:comand),
            ]),
            
        ],
      ), 
      );
    
  }
}