import 'package:flutter/material.dart';
import 'package:nabhni/core/responsivity.dart';

class StoreAppbar extends StatelessWidget {
  const StoreAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: R.sH(context,40),bottom: R.sH(context,24),left: R.sW(context, 20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        
        BackButton(),
        Spacer(),
        SizedBox(
          height: R.sH(context,52),
          width: R.sW(context, 280),
          child: TextField(
            
           decoration: InputDecoration(
            
            prefixIcon: Icon(Icons.search),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: 'ما الذي تريده',
            border: OutlineInputBorder(borderRadius:BorderRadius.circular(R.sR(context, 12)))
           ),
          ),
        )
      ],),
    );
  }
}