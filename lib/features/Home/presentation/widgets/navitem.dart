import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class NavbarItems extends StatelessWidget {
   NavbarItems({super.key,required this.icon,required this.label});
 Image icon;
 String label; 
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: []);
  }
}