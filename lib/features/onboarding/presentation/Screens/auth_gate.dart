import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_screen.dart';
import 'package:nabhni/features/Home/presentation/screens/home_screen.dart';
import 'package:nabhni/features/onboarding/presentation/Screens/onboarding.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  // If the user is already signed-in, use it as initial data
  initialData: FirebaseAuth.instance.currentUser,
  builder: (context, snapshot) {
    // User is not signed in
    if (snapshot.connectionState == ConnectionState.active) {
      User? user=snapshot.data;
      if (user==null) {
        return Onboarding();

      }else{
        return HomeScreen();
      }
      
    }

   return Center(child: CircularProgressIndicator(),);
    
  },
);
  }}