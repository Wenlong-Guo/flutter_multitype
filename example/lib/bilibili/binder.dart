import 'package:example/bilibili/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/7/4 11:01
/// * Email:       guowenlong20000@sina.com
class CategoryViewBinder extends ItemViewBinder<CategoryName> {
  @override
  Widget buildWidget(BuildContext context, CategoryName item, int index) {
    return InkWell(
      onTap: () {
        EasyLoading.showToast("点击了 ${item.title}");
        // onItemTap(context, item, index);
      },
      child: Container(
          margin: const EdgeInsets.all(12),
          height: 40,
          alignment: Alignment.centerLeft,
          child: Text(
            "${item.title}",
            style: const TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.left,
          )),
    );
  }
}

class ContentViewBinder extends ItemViewBinder<List<CategorySubContent>> {
  @override
  Widget buildWidget(BuildContext context, List<CategorySubContent> item, int index) {
    return InkWell(
        onTap: () {},
        child: Container(
            margin: const EdgeInsets.all(12),
            child: GridView.count(
              childAspectRatio: 10 / 9,
              padding: EdgeInsets.zero,
              //父布局滑动冲突
              primary: false,
              //处理listview嵌套报错
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              children: getItemWidget(item),
            )));
  }

  List<Widget> getItemWidget(List<CategorySubContent> item) {
    List<Widget> list = [];
    for (var element in item) {
      list.add(InkWell(
        onTap: () {
          EasyLoading.showToast("点击了 ${element.title} \n 图片地址是${element.url}");
        },
        child: Column(
          children: [
            Image.asset("assets/images/bilibili/${element.url}"),
            Container(
                margin: const EdgeInsets.all(6),
                child: Text(
                  "${element.title}",
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ))
          ],
        ),
      ));
    }
    return list;
  }
}
