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

///一张图片的博文
class OneImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 OneImageViewBinder} $index");
        // onItemTap(context, item, index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "${item.name}",
                    softWrap: true,
                    style: const TextStyle(
                        height: 1,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 0.0,
                      minHeight: 0.0,
                      maxWidth: 260.0,
                    ),
                    child: Text(
                      "${item.content}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 100.0,
                    minHeight: 100.0,
                    maxWidth: 250.0,
                    maxHeight: 500.0,
                  ),
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      child: Image.asset(item.imageUrls![0])),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///2张图片的博文
class TwoImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 OneImageViewBinder} $index");
        // onItemTap(context, item, index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "${item.name}",
                    softWrap: true,
                    style: const TextStyle(
                        height: 1,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 0.0,
                      minHeight: 0.0,
                      maxWidth: 260.0,
                    ),
                    child: Text(
                      "${item.content}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![0],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![1],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

///四张图片的博文
class FourImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 OneImageViewBinder} $index");
        // onItemTap(context, item, index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "${item.name}",
                    softWrap: true,
                    style: const TextStyle(
                        height: 1,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 0.0,
                      minHeight: 0.0,
                      maxWidth: 260.0,
                    ),
                    child: Text(
                      "${item.content}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![0],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![1],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![2],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(4, 4, 0, 0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Image.asset(
                          item.imageUrls![3],
                          fit: BoxFit.cover,
                          width: 125,
                          height: 125,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

///没有图片的博文
class OtherViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 OtherViewBinder} $index");
        // onItemTap(context, item, index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "${item.name}",
                    softWrap: true,
                    style: const TextStyle(
                        height: 1,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 0.0,
                      minHeight: 0.0,
                      maxWidth: 260.0,
                    ),
                    child: Text(
                      "${item.content}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                    child: ConstrainedBox(
                        constraints: const BoxConstraints(
                            minWidth: 0.0,
                            minHeight: 0.0,
                            maxWidth: 250.0,
                            maxHeight: 250),
                        child: GridView.count(
                          childAspectRatio: 1 / 1,
                          padding: EdgeInsets.zero,
                          //父布局滑动冲突
                          primary: false,
                          //处理listview嵌套报错
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          children: getItemWidget(item.imageUrls ?? []),
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getItemWidget(List<String> item) {
    List<Widget> list = [];
    for (var element in item) {
      list.add(InkWell(
        onTap: () {
          EasyLoading.showToast("点击的图片地址是$element");
        },
        child: Column(
          children: [
            Image.asset(
              element,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ],
        ),
      ));
    }
    return list;
  }
}

class NoImageViewBinder extends ItemViewBinder<BlogMessage> {
  @override
  Widget buildWidget(BuildContext context, BlogMessage item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 OtherViewBinder} $index");
        // onItemTap(context, item, index);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              item.avatar ?? defaultAvatarUrl,
              width: 40,
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "${item.name}",
                    softWrap: true,
                    style: const TextStyle(
                        height: 1,
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.white60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 0.0,
                      minHeight: 0.0,
                      maxWidth: 260.0,
                    ),
                    child: Text(
                      "${item.content}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
