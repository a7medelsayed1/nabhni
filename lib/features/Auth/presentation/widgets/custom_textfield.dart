import 'package:flutter/material.dart';
import 'package:nabhni/core/textutils.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({super.key, required this.label,this.iconpass});
  String label;
  bool? iconpass;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.end,
        decoration: InputDecoration(
            prefixIcon:Icon(Icons.visibility_off),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            hintText: label
            // hintText: Align(
            //     alignment: Alignment.centerRight,
            //     child: Text(
            //       label,
            //       style: Textutils.loginsuptitle,
            //     ))),
       ) ),
    );
  }
}
