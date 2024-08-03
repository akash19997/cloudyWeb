// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'injection_container.dart' as depinj;
import 'injection_container.dart';
import 'core/navigation/route.dart';

Future<void> main({env}) async {
  await Future.delayed(const Duration(seconds: 1));
  WidgetsFlutterBinding.ensureInitialized();
  await depinj.init();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(App());
  });
}

class App extends StatelessWidget {
  bool login = true;
  SharedPreferences pref = getIt<SharedPreferences>();
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = depinj.getIt<AppRouter>();
    return MaterialApp.router(
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.05),
              child: child!);
        },
        debugShowCheckedModeBanner: false,
        routerDelegate: router.delegate(initialRoutes: [
          ((pref.getBool('loginScreen') == null) ||
                  pref.getBool('loginScreen') == false)
              ? const WelcomePageRoute()
              : HomeContainerScreenRoute()
        ]),
        routeInformationParser: router.defaultRouteParser());
  }
}
