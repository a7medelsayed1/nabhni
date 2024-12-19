import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/features/Auth/presentation/screens/location_per_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_success.dart';
import 'package:nabhni/features/Auth/presentation/screens/phone_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/signup_screen.dart';
import 'package:nabhni/features/Auth/presentation/screens/signup_second.dart';
import 'package:nabhni/features/Auth/presentation/screens/verify_view.dart';
import 'package:nabhni/features/Home/presentation/screens/faqustion.dart';
import 'package:nabhni/features/Home/presentation/screens/news_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/advices_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/callcenter_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/cart_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/home_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/inquiry_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/news_details.dart';
import 'package:nabhni/features/Home/presentation/screens/notification_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/orders_follow.dart';
import 'package:nabhni/features/Home/presentation/screens/recharge_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/reports_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/splash_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/onboarding.dart';
import 'package:nabhni/features/settings/presentation/screens/accountsetting_screen.dart';
import 'package:nabhni/features/settings/presentation/screens/address_added.dart';
import 'package:nabhni/features/settings/presentation/screens/address_details.dart';
import 'package:nabhni/features/settings/presentation/screens/address_screen.dart';
import 'package:nabhni/features/settings/presentation/screens/favourits_screen.dart';
import 'package:nabhni/features/settings/presentation/screens/peronalinformation_screen.dart';
import 'package:nabhni/features/settings/presentation/screens/share_screen.dart';
import 'package:nabhni/features/settings/presentation/screens/terms_screen.dart';
import 'package:nabhni/features/store/presentation/screens/bestseller_screen.dart';
import 'package:nabhni/features/store/presentation/screens/recommented_screen.dart';

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
    case Routes.home: return MaterialPageRoute(builder: (context)=> HomeScreen());
    case Routes.phone: return MaterialPageRoute(builder: (context)=> PhoneNumScreen());
    case Routes.verify: return MaterialPageRoute(builder: (context)=>  VerifyView());
    case Routes.advices: return MaterialPageRoute(builder: (context)=>  AdvicesScreen());
    case Routes.recharge: return MaterialPageRoute(builder: (context)=>  RechargeScreen());
    case Routes.inquiry: return MaterialPageRoute(builder: (context)=> const InquiryScreen());
    case Routes.callcenter: return MaterialPageRoute(builder: (context)=> const CallcenterScreen());
    case Routes.news: return MaterialPageRoute(builder: (context)=> const NewsScreen());
    case Routes.reports: return MaterialPageRoute(builder: (context)=> const ReportsScreen());
    case Routes.bestseller: return MaterialPageRoute(builder: (context)=>  BestsellerScreen());
    case Routes.cart: return MaterialPageRoute(builder: (context)=>  CartScreen());
    case Routes.notification: return MaterialPageRoute(builder: (context)=>  NotificationScreen());
    case Routes.recommended: return MaterialPageRoute(builder: (context)=>  RecommentedScreen());
    case Routes.personal: return MaterialPageRoute(builder: (context)=>  PeronalinformationScreen());
    case Routes.account: return MaterialPageRoute(builder: (context)=>  AccountsettingScreen());
    case Routes.favourits: return MaterialPageRoute(builder: (context)=>  FavouritsScreen());
    case Routes.address: return MaterialPageRoute(builder: (context)=>  AddressScreen());
    case Routes.share: return MaterialPageRoute(builder: (context)=>  ShareScreen());
    case Routes.terms: return MaterialPageRoute(builder: (context)=>  TermsScreen());
    case Routes.addressdetails: return MaterialPageRoute(builder: (context)=>  AddressDetails());
    case Routes.addressadded: return MaterialPageRoute(builder: (context)=>  AddressAdded());
    case Routes.ordersfollow: return MaterialPageRoute(builder: (context)=>  OrdersFollow());
    case Routes.newsdetails: return MaterialPageRoute(builder: (context)=>  NewsDetails());
    case Routes.faqustion: return MaterialPageRoute(builder: (context)=>  Faqustion());

    default: return undifinedroute();
    
  }
  
  
}
static Route<dynamic> undifinedroute() {
return  MaterialPageRoute(builder: (context)=> const Scaffold(body: Column(children: [Center(child: Text("Undefined route"),)],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,),));
}

}

