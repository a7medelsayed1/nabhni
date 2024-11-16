import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nabhni/core/Route/app_router.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/connectivity.dart';
import 'package:nabhni/features/no_connection/screens/no_connection_screen.dart';
import 'package:nabhni/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isOnline,
        builder: (_, value, __) {
          if (value) {
            return MaterialApp(
                locale: const Locale('ar'),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                debugShowCheckedModeBanner: false,
                title: 'nabhni',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                  fontFamily: "Zain",
                ),
                initialRoute: Routes.splash,
                onGenerateRoute: AppRouter.onGeneratRoute,
                builder: (context, widget) {
              return Scaffold(
                body: Builder(builder: (context) {
                  ConnectivityController.instance.checkConnection();
                  return widget!;
                }),
              );
            });
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'nabhni',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: "Zain",
              ),
              home: const NoConnectionScreen(),
              // initialRoute: Routes.splash,
            );
          }
        });
  }
}