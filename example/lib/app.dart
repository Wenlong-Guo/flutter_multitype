import 'package:flutter/material.dart';

import 'home_page.dart';

/// * Description: App
/// * Author:      郭文龙
/// * Date:        2022/7/1 21:18
/// * Email:       guowenlong20000@sina.com
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'MultiType Sample'),
    );
  }
}
