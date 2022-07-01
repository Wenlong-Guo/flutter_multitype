import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

import 'item_view_binder.dart';

typedef Register = Function(MultiTypeAdapter adapter);

typedef Linker<T> = ItemViewBinder<T> Function(int position, dynamic item);

/// * Description: 多种数据视图的适配器
/// * Author:      郭文龙
/// * Date:        2022/6/29 23:04
/// * Email:       guowenlong20000@sina.com
class MultiTypeAdapter {
  static MultiTypeAdapter newInstance(Register register) {
    MultiTypeAdapter adapter = MultiTypeAdapter();
    register.call(adapter);
    return adapter;
  }

  HashMap<int, Linker> map = HashMap();

  List<ItemViewBinder> itemViewBinders = [];

  void register<T>(ItemViewBinder<T> binder) {
    itemViewBinders.add(binder);
    binder.adapter = this;
  }

  void registerOneToMany<T>(Linker<T> call) {
    map[T.hashCode] = call;
  }

  Widget getItemBuilder(BuildContext context, int index, dynamic item) {
    ItemViewBinder? itemViewBinder;
    var binders = itemViewBinders.where((element) => element.isMatch(item, index));
    if (binders.isNotEmpty) {
      itemViewBinder = binders.first;
    } else {
      itemViewBinder = map[item.runtimeType.hashCode]?.call(index, item);
    }
    return itemViewBinder?.buildWidget(context, item, index) ?? const Offstage();
  }
}
