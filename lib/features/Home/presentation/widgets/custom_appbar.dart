import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: R.sH(context, 152),
      decoration: BoxDecoration(
        color: Mycolors.mybuttoncolor,
        image: const DecorationImage(image: AssetImage(Images.appbar,)),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(R.sR(context,50)),bottomRight: Radius.circular(R.sR(context,50)))
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 152);
}