import 'dart:collection';

import 'item_view_binder.dart';

typedef Linker<T> = ItemViewBinder<T> Function({int position, T item});

/// * Description: MultiType的Adapter
/// * Author:      郭文龙
/// * Date:        2022/6/29 23:04
/// * Email:       guowenlong20000@sina.com
class MultiTypeAdapter {
  HashMap<String, Linker> map = HashMap();

  List<ItemViewBinder> itemViewBinders = [];

  void register<T>(ItemViewBinder<T> binder) {
    itemViewBinders.add(binder);
    binder.adapter = this;
  }

  void registerOneToMany<T>(Linker<T> call) {
    map[T.runtimeType.toString()] = call as Linker;
  }
}
