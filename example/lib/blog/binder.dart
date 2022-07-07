import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multitype/multitype.dart';

import 'data.dart';

String defaultAvatarUrl = "assets/images/chat/image_c05.png";

/// * Description: 仿博客类App的ViewBinder
/// * Author:      郭文龙
/// * Date:        2022/7/7 0:12
/// * Email:       guowenlong20000@sina.com
class OneImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
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
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 0.0,
                    minHeight: 0.0,
                    maxWidth: 260.0,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Text(
                        "${item.content}",
                        softWrap: true,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      )),
                ),
              )
            ],
          )),
    );
  }
}

class TwoImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
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
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 0.0,
                    minHeight: 0.0,
                    maxWidth: 260.0,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Text(
                        "${item.content}",
                        softWrap: true,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      )),
                ),
              )
            ],
          )),
    );
  }
}

class FourImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
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
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 0.0,
                    minHeight: 0.0,
                    maxWidth: 260.0,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Text(
                        "${item.content}",
                        softWrap: true,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      )),
                ),
              )
            ],
          )),
    );
  }
}

class OtherViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
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
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 0.0,
                    minHeight: 0.0,
                    maxWidth: 260.0,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Text(
                        "${item.content}",
                        softWrap: true,
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.left,
                      )),
                ),
              )
            ],
          )),
    );
  }
}
