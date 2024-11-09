import 'package:flutter/material.dart';

extension RouteEX on BuildContext{
  Future<dynamic> pushName(String routename){
    return Navigator.of(this).pushNamed(routename);
  }
  void pop()=>Navigator.of(this).pop();
}