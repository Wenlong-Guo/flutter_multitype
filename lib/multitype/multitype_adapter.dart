import 'dart:collection';

import 'item_view_binder.dart';
import 'multitype_listview.dart';

/// * Description: MultiType的Adapter
/// * Author:      郭文龙
/// * Date:        2022/6/29 23:04
/// * Email:       guowenlong20000@sina.com
class MultiTypeAdapter {
  HashMap<int, Linker> map = HashMap();

  List<ItemViewBinder> itemViewBinders = [];

  void register<T>(ItemViewBinder<T> binder) {
    T.runtimeType.toString();

    itemViewBinders.add(binder);
    binder.adapter = this;
  }

  void registerOneToMany<T>(Linker<T> call) {
    var a = T.runtimeType.hashCode;
    map[a] = call;
  }
}
