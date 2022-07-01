import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/30 22:23
/// * Email:       guowenlong20000@sina.com
class StringViewBinder extends ItemViewBinder<String> {
  @override
  Widget buildWidget(BuildContext context, String item, int index) {
    return Text("StringViewBinder 值为 $item");
  }
}
