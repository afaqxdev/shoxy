import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoxy/Feature/Landing_Screen/Landing.dart';
import 'package:shoxy/Feature/Sign/Recovery.dart';
import 'package:shoxy/Feature/Sign/Sign_In.dart';
import 'package:shoxy/Feature/Sign/Sign_Up.dart';
import 'package:shoxy/Feature/Splash_Screen/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: ((context, child) => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // home: SplashScreen(),
              // home: SignUp(),
              // home: Recovery(),
              // home: LandingScreen(),
              home: SignIn(),
              debugShowCheckedModeBanner: false,
            )));
  }
}
