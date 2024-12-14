import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class LanguageDialog extends StatefulWidget {
  const LanguageDialog({
    super.key,
  });

  @override
  State<LanguageDialog> createState() => GenderDialogState();
}

class GenderDialogState extends State<LanguageDialog> {
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
          'اختر اللغه',style: Textutils.title22bold,
          textAlign: TextAlign.center,
        ),
           ListTile(
            title: Text("العربيه",style: Textutils.title22bold,),
            leading: Radio<String>(
              value: "Arabic",
              groupValue: selectedOption,
              onChanged: handleRadioValueChange,
            ),
          ),
          ListTile(
            title: Text("English",style: Textutils.title22bold,),
            leading: Radio<String>(
              value: "English",
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