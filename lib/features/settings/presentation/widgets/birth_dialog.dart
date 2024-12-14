import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class BirthDialog extends StatefulWidget {
  const BirthDialog({
    super.key,
  });

  @override
  State<BirthDialog> createState() => GenderDialogState();
}

class GenderDialogState extends State<BirthDialog> {
 static String? selectedOption;

   DateTime _selectedDate = DateTime.now();


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
          'اختر تاربخا',style: Textutils.title22bold,
          textAlign: TextAlign.center,
        ),
        
          SizedBox(
            height: 120,
            child: ScrollDatePicker(
              selectedDate: _selectedDate,
              locale: Locale('ar'),
              onDateTimeChanged: (DateTime value) {
                setState(() {
                  _selectedDate = value;
                });
              },
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