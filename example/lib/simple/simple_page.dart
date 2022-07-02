import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

import 'int_view_binder.dart';
import 'string_view_binder.dart';
import 'string_view_binder2.dart';

/// * Description: 列表布局
/// * Author:      郭文龙
/// * Date:        2022/7/1 18:10
/// * Email:       guowenlong20000@sina.com
class SimplePage extends StatefulWidget {
  const SimplePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SimplePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SimplePage> {
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
    // adapter.registerUnsupportedViewBinder(DefaultUnsupportedViewBinder());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return adapter.getItemBuilder(context, index, items[index]);
        },
      ),
    );
  }
}
