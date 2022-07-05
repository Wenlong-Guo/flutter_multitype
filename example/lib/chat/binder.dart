import 'package:example/chat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/7/5 23:36
/// * Email:       guowenlong20000@sina.com


class TextMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class TextOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class ImageMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class ImageOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class RedPacketMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class RedPacketOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class UnknownMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 20,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class UnknownOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 20,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.content}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}
