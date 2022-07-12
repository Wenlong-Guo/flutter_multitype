import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype/item_view_binder.dart';

/// * Description: 默认调试用的ViewBinder
/// * Author:      郭文龙
/// * Date:        2022/7/1 22:37
/// * Email:       guowenlong20000@sina.com
class DefaultDebugViewBinder extends ItemViewBinder<dynamic> {
  @override
  Widget buildWidget(BuildContext context, item, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("WARNING！！！\nindex: $index\nitem: $item\n"),
          Text(
            "This item is not register bind view \n please check it",
            style: TextStyle(color: Colors.grey[200]),
          ),
        ],
      ),
    );
  }

  @override
  bool isMatch(dynamic item, int index) {
    return item != null;
  }
}
