import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'multitype_adapter.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/28 14:37
/// * Email:       guowenlong20000@sina.com
abstract class ItemViewBinder<T> {
  MultiTypeAdapter? adapter;

  bool isMatch(dynamic item, int index) {
    return item is T;
  }

  Linker<T>? findLinker(dynamic item, int index) {
    Linker? linker = adapter?.map[T.runtimeType.toString()];
    if (linker != null) {
      return linker as Linker<T>;
    } else {
      return null;
    }
  }

  Widget buildWidget(BuildContext context, T item, int index);
}
