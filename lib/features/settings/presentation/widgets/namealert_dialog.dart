import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class NameDialog extends StatelessWidget {
  const NameDialog({
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
          'ادخل اسمك',style: Textutils.title22bold,
          textAlign: TextAlign.center,
        ),
             const TextField(
            decoration: InputDecoration(
              hintText: 'ادخل اسمك',
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