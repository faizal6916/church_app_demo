import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
           // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
           textTheme: Typography.englishLike2014.apply(fontSizeFactor: 1.sp)
          ),
          home: child,
          //  routes: {
          //   SplashScreen.routeName: (ctx) => SplashScreen(),
          //   LoginScreen.routeName: (ctx) => LoginScreen()
          // },
        );
      },
      child: SplashScreen(),
    );
  }
}

