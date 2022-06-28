import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/28 14:37
/// * Email:       guowenlong20000@sina.com
abstract class ItemViewBinder<T> {
  bool matchType(dynamic item, int index) {
    return item.runtimeType is T;
  }

  Widget buildWidget(BuildContext context, T item, int index);
}
