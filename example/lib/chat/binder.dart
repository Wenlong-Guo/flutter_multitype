import 'package:example/chat/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multitype/multitype.dart';

String defaultAvatarUrl = "assets/images/chat/image_c05.png";

typedef OnItemTap<T> = Function(BuildContext context, ChatMessage item, int index);

/// * Description: 仿IM类软件的ViewBinder
/// * Author:      郭文龙
/// * Date:        2022/7/5 23:36
/// * Email:       guowenlong20000@sina.com
class TextMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 TextMeViewBinder");
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
                      softWrap : true,
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
        EasyLoading.showToast("点击了 TextOtherViewBinder} $index");
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
          Flexible(
            child: Container(
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
          ),
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
        EasyLoading.showToast("点击了 ImageMeViewBinder");
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
          EasyLoading.showToast("点击了 ImageOtherViewBinder");
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
                    alignment: Alignment.topLeft,
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
  OnItemTap<ChatMessage> onItemTap;

  RedPacketMeViewBinder(this.onItemTap);

  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    Image image;
    if (item.isRedPacketMeGet == true) {
      image = Image.asset("assets/images/chat/image_red_opened.png");
    } else {
      image = Image.asset("assets/images/chat/image_red_normal.png");
    }
    return InkWell(
        onTap: () {
          onItemTap(context, item, index);
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
                    child: image),
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
        ));
  }
}

class RedPacketOtherViewBinder extends ItemViewBinder<ChatMessage> {
  OnItemTap<ChatMessage> onItemTap;

  RedPacketOtherViewBinder(this.onItemTap);

  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    Image image;

    if (item.isRedPacketMeGet == true) {
      image = Image.asset("assets/images/chat/image_red_opened.png");
    } else {
      image = Image.asset("assets/images/chat/image_red_normal.png");
    }
    return InkWell(
        onTap: () {
          onItemTap(context, item, index);
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
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: image),
              ),
            ],
          ),
        ));
  }
}

class UnknownMeViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 UnknownMeViewBinder");
        // onItemTap(context, item, index);
      },
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(12),
                  alignment: Alignment.topRight,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: const Text(
                    "你的版本不支持此类消息，请更新版本",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.left,
                  )),
            ),
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

class UnknownOtherViewBinder extends ItemViewBinder<ChatMessage> {
  @override
  Widget buildWidget(BuildContext context, ChatMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 UnknownOtherViewBinder");
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
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: const Text(
                "你的版本不支持此类消息，请更新版本",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
