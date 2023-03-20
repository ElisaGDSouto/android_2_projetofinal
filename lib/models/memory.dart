import 'dart:ffi';

import 'package:flutter/material.dart';

class Memory {

  static const  PathOperation =  ['%','/','x','-','+','=']; 

   final _buffer = [0.0, 0.0];
   // ignore: prefer_final_fields
   int _bufferIndex = 0;

    
  String _value = '';
String comandos = '';

  _allClear() {
  _value = '0';
}
  void applyComand(String acao){
      if(acao == 'AC'){
      _allClear();
      }else if(comandos.contains(acao)){
        

}      
       else{
        _value += acao;
      }
  }
  

  String get value {
    return _value;
  }
}

