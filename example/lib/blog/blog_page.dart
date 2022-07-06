import 'package:example/chat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description: 仿博客类App的应用场景
/// * Author:      郭文龙
/// * Date:        2022/7/1 18:11
/// * Email:       guowenlong20000@sina.com
class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}
class _BlogPageState extends State<BlogPage> {
  List<dynamic> items = Data.getChatMessageData();

  @override
  Widget build(BuildContext context) {
    MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
      // adapter.registerOneToMany<ChatMessage>((position, item) {
      //
      // });
      adapter.setDebugViewBinderEnable(isEnable: true);
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat Page"),
        ),
        body: Container(
          margin: const EdgeInsets.all(12),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return adapter.getItemBuilder(context, index, items[index]);
            },
          ),
        ));
  }
}
