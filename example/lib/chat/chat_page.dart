import 'package:example/chat/binder.dart';
import 'package:example/chat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description: 仿聊天页面
/// * Author:      郭文龙
/// * Date:        2022/7/2 3:11
/// * Email:       guowenlong20000@sina.com
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<dynamic> items = Data.getChatMessageData();
  MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
    adapter.registerOneToMany<ChatMessage>((position, item) {
      var message = item as ChatMessage;
      print("message$message");
      if (message.isMe == true) {
        switch (message.type) {
          case 0:
            {
              return TextMeViewBinder();
            }
          case 2:
            {
              return ImageMeViewBinder();
            }
          case 4:
            {
              return RedPacketMeViewBinder();
            }
          default:
            {
              return UnknownMeViewBinder();
            }
        }
      } else {
        switch (message.type) {
          case 1:
            {
              return TextOtherViewBinder();
            }
          case 3:
            {
              return ImageOtherViewBinder();
            }
          case 5:
            {
              return RedPacketOtherViewBinder();
            }
          default:
            {
              return UnknownOtherViewBinder();
            }
        }
      }
    });
    adapter.setDebugViewBinderEnable(isEnable: true);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Page"),
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
