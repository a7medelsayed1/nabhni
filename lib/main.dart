import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nabhni/core/Route/app_router.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/app_locale.dart';
import 'package:nabhni/core/connectivity.dart';
import 'package:nabhni/features/common/cubit/locale/locale_cubit.dart';
import 'package:nabhni/features/common/cubit/locale/locale_states.dart';
import 'package:nabhni/features/no_connection/screens/no_connection_screen.dart';
import 'package:nabhni/firebase_options.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            return MultiBlocProvider(providers: [
              BlocProvider(
                create: (context) => LocaleCubit()..getSavedLanguage(),
              ),
            ], child: BlocBuilder<LocaleCubit, ChangeLocaleState>(
                builder: (context, state) {
                  return MaterialApp(
                      locale: state.locale,
                      localizationsDelegates: const [
                        AppLocale.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: const [
                        Locale('ar', ''),
                        Locale('en', '')
                      ],
                      localeResolutionCallback:
                          (currentLocale, supportedLocales) {
                        if (currentLocale != null) {
                          for (Locale locale in supportedLocales) {
                            if (locale.languageCode ==
                                currentLocale.languageCode) {
                              return currentLocale;
                            }
                            debugPrint(
                                'currentLocale ==> ${state.locale.languageCode}');
                          }
                        }
                        return supportedLocales.first;
                      },
                      debugShowCheckedModeBanner: false,
                      title: 'nabhni',
                      theme: ThemeData(
                        colorScheme: ColorScheme.fromSeed(
                            seedColor: Colors.deepPurple),
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
                                  return const SizedBox();
                }));
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
