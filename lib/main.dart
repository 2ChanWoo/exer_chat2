import 'package:exer_chat2/screens/home/home.screen.dart';
import 'package:exer_chat2/screens/signup_signin/signupSigninScreen.dart';
import 'package:exer_chat2/services/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        360,
        690,
      ),
      builder: () => GetMaterialApp(
        title: '채팅연습',
        initialRoute: RouteNames.sign,
        getPages: [
          GetPage(name: RouteNames.home, page: () => HomeScreen()),
          GetPage(name: RouteNames.sign, page: () => SignupSigninScreen()),
        ],
      ),
    );
  }
}
