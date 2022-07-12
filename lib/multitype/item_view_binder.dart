import 'package:flutter/material.dart';

import 'multitype_adapter.dart';

/// * Description: 数据视图绑定器的抽象
/// * Author:      郭文龙
/// * Date:        2022/6/28 14:37
/// * Email:       guowenlong20000@sina.com
abstract class ItemViewBinder<T> {
  MultiTypeAdapter? adapter;

  ///Whether to match the data and type
  bool isMatch(dynamic item, int index) {
    return item.runtimeType == T;
  }

  ///Search one to many callback
  Linker<T>? findLinker(T item, int index) {
    Linker? linker = adapter?.links[item.runtimeType.hashCode];
    if (linker != null) {
      return linker as Linker<T>;
    } else {
      return null;
    }
  }

  ///item's widget
  Widget buildWidget(BuildContext context, T item, int index);
}
