import 'package:conversor_moeda/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/placeholder.dart';
// ignore: duplicate_import
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'button.dart';

// ignore: use_key_in_widget_constructors
class ButtonRow extends StatelessWidget {
  
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        // ignore: sort_child_properties_last
        children: buttons,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        )
    );
    // ignore: dead_code, unused_label
    children: buttons.fold(<Widget>[], (list, b){
      list.isEmpty ? list.add(b) : list.addAll([SizedBox(height: 2), b]);
      return list;
    });
  }
}