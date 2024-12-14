import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class GenderDialog extends StatefulWidget {
  const GenderDialog({
    super.key,
  });

  @override
  State<GenderDialog> createState() => GenderDialogState();
}

class GenderDialogState extends State<GenderDialog> {
 static String? selectedOption;

  void handleRadioValueChange(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      
      
      content:Container(
        height: R.sH(context, 170),
        width: R.sW(context, 353),
        child: Column(
          children:[
            Align(alignment: Alignment.topLeft,child: InkWell(onTap:() => context.pop(),child: Icon(Icons.cancel,)),),
            Text(
          'نوع الجنس',style: Textutils.title22bold,
          textAlign: TextAlign.center,
        ),
           ListTile(
            title: Text("ذكر",style: Textutils.title22bold,),
            leading: Radio<String>(
              value: "male",
              groupValue: selectedOption,
              onChanged: handleRadioValueChange,
            ),
          ),
          ListTile(
            title: Text("انثي",style: Textutils.title22bold,),
            leading: Radio<String>(
              value: "female",
              groupValue: selectedOption,
              onChanged: handleRadioValueChange,
            ),
          ),
        
             ] ),
      ),
      actions: <Widget>[
        Custombutton(text: 'تأكيد', route: () => context.pop())
      ],
    );
  }
}