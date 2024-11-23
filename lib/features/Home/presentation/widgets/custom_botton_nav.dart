import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/features/Home/models/navitem.dart';
import 'package:nabhni/features/Home/presentation/widgets/navitem.dart';

class CustomBottomNavigationBar extends StatelessWidget {
   CustomBottomNavigationBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(color: Mycolors.lightcyan,
    height: R.sH(context,91),
    width: R.sW(context, double.infinity),
    child: Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [NavbarItems(label: "الرئيسيه" ,icon: Image.asset(Images.store),),
      NavbarItems(label: "الرئيسيه" ,icon: Image.asset(Images.store),),NavbarItems(label: "الرئيسيه" ,icon: Image.asset(Images.store),),NavbarItems(label: "الرئيسيه" ,icon: Image.asset(Images.store),)],),
    );
  }
  
}


