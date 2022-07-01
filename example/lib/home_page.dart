import 'package:flutter/material.dart';

/// * Description: 首页
/// * Author:      郭文龙
/// * Date:        2022/7/2 2:45
/// * Email:       guowenlong20000@sina.com
class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text(
                  "comprehensive_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "chat_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "bilibili_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "select_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "one_to_many_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "simple_page",
                  style: Theme.of(context).textTheme.headline2,
                )),
          ],
        ),
      ),
    );
  }
}
