import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _Splashscreen();
}
 
class _Splashscreen extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
 _navigateToHomeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Images.logo),
      ),
    );
  }
  void _navigateToHomeScreen()  {
     Timer(const Duration(seconds: 3), ()=> context.pushName(Routes.boarding));
  }
}