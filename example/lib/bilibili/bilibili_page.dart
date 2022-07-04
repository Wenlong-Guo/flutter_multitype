import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';
import 'data.dart';
import 'binder.dart';

/// * Description: 仿Bilibili应用场景
/// * Author:      郭文龙
/// * Date:        2022/7/2 2:38
/// * Email:       guowenlong20000@sina.com
class BilibiliPage extends StatefulWidget {
  const BilibiliPage({Key? key}) : super(key: key);

  @override
  State<BilibiliPage> createState() => _BilibiliPageState();
}

class _BilibiliPageState extends State<BilibiliPage> {
  List<dynamic> items = Data.getBilibiliData();
  MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
    adapter.register(CategoryViewBinder());
    adapter.register(ContentViewBinder());
    adapter.setDebugViewBinderEnable(isEnable: true);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bilibili Page"),
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
