import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

/// * Description: App
/// * Author:      郭文龙
/// * Date:        2022/7/1 21:18
/// * Email:       guowenlong20000@sina.com
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: Brightness.light, appBarTheme: const AppBarTheme(backgroundColor: Color.fromARGB(255, 61, 73, 85)), scaffoldBackgroundColor: const Color.fromARGB(255, 61, 73, 85)),
            title: 'Flutter Demo',
            builder: EasyLoading.init(),
            home: const HomePage(title: 'MultiType Samples'),
          );
        });
  }
}
