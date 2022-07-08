import 'package:example/blog/binder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

import 'data.dart';

/// * Description: 仿博客类App的应用场景
/// *              注:这种实现方式比较勉强,只是为了展示一对多的使用方法
/// * Author:      郭文龙
/// * Date:        2022/7/1 18:11
/// * Email:       guowenlong20000@sina.com
class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  List<dynamic> items = Data.getBlogMessageData();

  @override
  Widget build(BuildContext context) {
    MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
      adapter.registerOneToMany<BlogMessage>((position, item) {
        BlogMessage blog = item as BlogMessage;
        switch (blog.imageUrls?.length) {
          case 1:
            return OneImageViewBinder();
          case 2:
            return TwoImageViewBinder();
          case 4:
            return FourImageViewBinder();
          case 3:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
            return OtherViewBinder();
          default:
            return NoImageViewBinder();
        }
      });
      adapter.setDebugViewBinderEnable(isEnable: true);
    });

    return Scaffold(
        appBar: AppBar(
          title: const Text("Blog Page"),
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
