import 'package:example/media/media_page.dart';
import 'package:example/chat/chat_page.dart';
import 'package:flutter/material.dart';

import 'blog/blog_page.dart';

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
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: const Color.fromARGB(255, 234, 86, 69),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Comprehensive Page",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 234, 86, 69),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChatPage()));
                  },
                  child: const Text(
                    "Chat Page",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 234, 86, 69),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MediaPage()));
                  },
                  child: const Text(
                    "Media Page",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 234, 86, 69),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BlogPage()));
                  },
                  child: const Text(
                    "Blog Page",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
