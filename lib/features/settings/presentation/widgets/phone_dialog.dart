import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class PhoneDialog extends StatelessWidget {
  const PhoneDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      
      
      content:Container(
        height: R.sH(context, 120),
        width: R.sW(context, 353),
        child: Column(
          children:[
            Align(alignment: Alignment.topLeft,child: InkWell(onTap:() => context.pop(),child: Icon(Icons.cancel,)),),
            Text(
          'ادخل رقم الهاتف',style: Textutils.title22bold,
          textAlign: TextAlign.center,
        ),
             const TextField(
              keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(
              
              hintText: '*********01',
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