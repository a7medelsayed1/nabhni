import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/features/Auth/presentation/screens/location_per_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_success.dart';
import 'package:nabhni/features/Auth/presentation/screens/signup_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/signup_second.dart';
import 'package:nabhni/features/Home/presentation/screens/home_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/splash_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/onboarding.dart';

class AppRouter {
static Route<dynamic> onGeneratRoute(RouteSettings settings){
  switch(settings.name){
    case Routes.splash : return MaterialPageRoute(builder: (context)=> const Splashscreen());
    case Routes.boarding: return MaterialPageRoute(builder: (context)=>const Onboarding());
    case Routes.login: return MaterialPageRoute(builder: (context)=>const LoginScreen());
    case Routes.loginsuccess: return MaterialPageRoute(builder: (context)=>const LoginSuccess());
    case Routes.location: return MaterialPageRoute(builder: (context)=>const LocationPerScreen());
    case Routes.signup: return MaterialPageRoute(builder: (context)=>const SignupScreen());
    case Routes.signupsecond: return MaterialPageRoute(builder: (context)=>const SignupSecond());
    case Routes.home: return MaterialPageRoute(builder: (context)=>const HomeScreen());

    default: return undifinedroute();
    
  }
  
  
}
static Route<dynamic> undifinedroute() {
return  MaterialPageRoute(builder: (context)=> const Scaffold(body: Column(children: [Center(child: Text("Undefined route"),)],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,),));
}

}

