import 'package:example/chat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/7/5 23:36
/// * Email:       guowenlong20000@sina.com
String defaultAvatarUrl = "assets/images/chat/image_c05.png";

class TextMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content}");
        // onItemTap(context, item, index);
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(12),
                alignment: Alignment.topRight,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text(
                  "${item.content}",
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  textAlign: TextAlign.left,
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 12, 0, 12),
              alignment: Alignment.topRight,
              child: Image.asset(
                item.avatar ?? defaultAvatarUrl,
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.content} $index");
        // onItemTap(context, item, index);
      },
      child: IntrinsicHeight(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 12, 0, 12),
            alignment: Alignment.topLeft,
            child: Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Text(
                "${item.content}",
                style: const TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.left,
              )),
        ],
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
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100.0,
                minHeight: 100.0,
                maxWidth: 200.0,
                maxHeight: 200.0,
              ),
              child: Container(
                  margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                  alignment: Alignment.topRight,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Image.asset(item.imageUrl!, fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
              alignment: Alignment.topRight,
              child: Image.asset(
                item.avatar ?? defaultAvatarUrl,
                width: 40,
                height: 40,
              ),
            )
          ],
        ),
      ),
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
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
                alignment: Alignment.topLeft,
                child: Image.asset(
                  item.avatar ?? defaultAvatarUrl,
                  width: 40,
                  height: 40,
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 100.0,
                  maxWidth: 200.0,
                  maxHeight: 200.0,
                ),
                child: Container(
                    margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                    alignment: Alignment.topRight,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Image.asset(item.imageUrl!)),
              ),
            ],
          ),
        ));
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
