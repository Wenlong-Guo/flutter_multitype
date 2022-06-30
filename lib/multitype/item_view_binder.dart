import 'dart:ffi';

import 'package:flutter/material.dart';

import 'multitype_adapter.dart';
import 'multitype_listview.dart';

/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/6/28 14:37
/// * Email:       guowenlong20000@sina.com
abstract class ItemViewBinder<T> {
  MultiTypeAdapter? adapter;

  bool isMatch(dynamic item, int index) {
    return item.runtimeType == T;
  }

  Linker<T>? findLinker(dynamic item, int index) {
    var a = item.runtimeType.hashCode;
    Linker? linker = adapter?.map[item.runtimeType.hashCode];
    if (linker != null) {
      return linker as Linker<T>;
    } else {
      return null;
    }
  }

  Widget buildWidget(BuildContext context, T item, int index);
}
