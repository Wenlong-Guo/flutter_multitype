import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

///Declare register binding view callback
typedef Register = Function(MultiTypeAdapter adapter);

///Declare register one to many binding view callback
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

  ///Returns the boolean value of the environment declaration [name].
  static const bool inProduction = bool.fromEnvironment("dart.vm.product");

  ///One to many binding view container
  HashMap<int, Linker> links = HashMap();

  ///One to one binding view container
  List<ItemViewBinder> itemViewBinders = [];

  ///Not register data 's binding view
  ItemViewBinder? _unsupportedViewBinder;

  ///Binding view for use in debug mode
  ItemViewBinder? _debugViewBinder;

  ///Register one to one data and binding view
  void register<T>(ItemViewBinder<T> binder) {
    itemViewBinders.add(binder);
    binder.adapter = this;
  }

  ///Unregister one to one data and binding view
  void unregister<T>(ItemViewBinder<T> binder) {
    itemViewBinders.remove(binder);
    binder.adapter = null;
  }

  ///Register one to many data and binding view
  void registerOneToMany<T>(Linker<T> call) {
    links[T.hashCode] = call;
  }

  ///Unregister one to many data and binding view
  void unregisterOneToMany<T>({Linker<T>? call}) {
    links.remove(T.hashCode);
  }

  ///Register not support data's view
  void registerUnsupportedViewBinder(ItemViewBinder unsupportedViewBinder) {
    _unsupportedViewBinder = unsupportedViewBinder;
  }

  ///Unregister not support data's view
  void unregisterUnsupportedViewBinder(ItemViewBinder unsupportedViewBinder) {
    _unsupportedViewBinder = null;
  }

  ///Set debug data and binding view visible
  void setDebugViewBinderEnable({bool isEnable = !inProduction, ItemViewBinder? debugViewBinder}) {
    if (isEnable && !inProduction) {
      _debugViewBinder = debugViewBinder ?? DefaultDebugViewBinder();
    } else {
      debugViewBinder = null;
    }
  }

  ///Parse the data corresponding to the bound view
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
