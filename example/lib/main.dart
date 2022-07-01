import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

import 'binder/IntViewBinder.dart';
import 'binder/StringViewBinder.dart';
import 'binder/StringViewBinder2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var items = [
    0,
    "1",
    2,
    "3",
    4,
    "5",
    [0, 1, 3],
    10,
    "11",
    12,
    "13",
    14,
    "15"
  ];

  ScrollController controller = ScrollController();

  MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
    adapter.register(IntViewBinder());
    adapter.registerOneToMany<String>((position, item) {
      if (item == "1" || item == "5") {
        return StringViewBinder();
      } else {
        return StringViewBinder2();
      }
    });
    adapter.setDebugViewBinderEnable(isEnable: true);
    adapter.registerUnsupportedViewBinder(DefaultUnsupportedViewBinder());
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return adapter.getItemBuilder(context, index, items[index]);
        },
      ),
    );
  }
}
