import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/splash_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/onboarding.dart';

class AppRouter {
static Route<dynamic> onGeneratRoute(RouteSettings settings){
  switch(settings.name){
    case Routes.splash : return MaterialPageRoute(builder: (context)=> const Splashscreen());
    case Routes.boarding: return MaterialPageRoute(builder: (context)=>const Onboarding());
    
    default: return undifinedroute();
    
  }
  
  
}
static Route<dynamic> undifinedroute() {
return  MaterialPageRoute(builder: (context)=> const Scaffold(body: Column(children: [Center(child: Text("Undefined route"),)],),));
}

}

