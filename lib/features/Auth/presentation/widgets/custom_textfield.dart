import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class CustomTextfield extends StatefulWidget {
  CustomTextfield({super.key, required this.label, this.iconpass,});
  String label;
  bool? iconpass;
  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {

  bool passsecure=true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(R.sH(context,8.0)),
      child: TextFormField(
        obscureText: (passsecure== true && widget.iconpass==true )?true:false,
          decoration: InputDecoration(
              suffixIcon: widget.iconpass==true?IconButton(icon:Image.asset(Images.eye),onPressed: (){
                
                setState(() {
                  passsecure =!passsecure;
                });
              },):null,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(R.sR(context, 6))),
              hintText: widget.label)),
    );
  }
}
