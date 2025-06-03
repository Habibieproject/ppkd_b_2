import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_color.dart';
import 'package:ppkd_b_2/meet_11/login_screen.dart';
import 'package:ppkd_b_2/meet_12/meet_12a.dart';
import 'package:ppkd_b_2/meet_12/meet_12b.dart';
import 'package:ppkd_b_2/meet_2/meet_2.dart';
import 'package:ppkd_b_2/meet_3/meet_3a.dart';
import 'package:ppkd_b_2/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        //Harus didaftarkan dulu disini
        "/": (context) => SplashScreen(),
        "/login": (context) => LoginScreen(),
        "/meet_2": (context) => MeetDua(),
        MeetTigaA.id: (context) => MeetTigaA(),
        Meet12AInputWidget.id: (context) => Meet12AInputWidget(),
        MeetDuaBelasB.id: (context) => MeetDuaBelasB(),
      },
      debugShowCheckedModeBanner: false,
      title: 'PPKD B 2',

      theme: ThemeData(
        // useMaterial3: true,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.army1),
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
      // home: LoginScreen(),
    );
  }
}
