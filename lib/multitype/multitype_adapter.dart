import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

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

  static const bool inProduction = bool.fromEnvironment("dart.vm.product");

  HashMap<int, Linker> links = HashMap();

  List<ItemViewBinder> itemViewBinders = [];

  ItemViewBinder? _unsupportedViewBinder;

  ItemViewBinder? _debugViewBinder;

  void register<T>(ItemViewBinder<T> binder) {
    itemViewBinders.add(binder);
    binder.adapter = this;
  }

  void registerOneToMany<T>(Linker<T> call) {
    links[T.hashCode] = call;
  }

  void registerUnsupportedViewBinder(ItemViewBinder unsupportedViewBinder) {
    _unsupportedViewBinder = unsupportedViewBinder;
  }

  void setDebugViewBinderEnable({bool isEnable = !inProduction, ItemViewBinder? debugViewBinder}) {
    if (isEnable && !inProduction) {
      _debugViewBinder = debugViewBinder ?? DefaultDebugViewBinder();
    } else {
      debugViewBinder = null;
    }
  }

  Widget getItemBuilder(BuildContext context, int index, dynamic item) {
    ItemViewBinder? itemViewBinder;
    var binders = itemViewBinders.where((element) => element.isMatch(item, index));
    if (binders.isNotEmpty) {
      itemViewBinder = binders.first;
    } else {
      itemViewBinder = links[item.runtimeType.hashCode]?.call(index, item);
    }
    Widget? widget = itemViewBinder?.buildWidget(context, item, index);
    widget ??= _debugViewBinder?.buildWidget(context, item, index);
    widget ??= _unsupportedViewBinder?.buildWidget(context, item, index);
    return widget ?? const Offstage();
  }
}
