import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multitype/multitype.dart';

import 'item_view_binder.dart';
import 'multitype_adapter.dart';

typedef Linker<T> = ItemViewBinder<T> Function(int position, dynamic item);

typedef Register = Function(MultiTypeAdapter adapter);

/// * Description: 多种 Type 的 ListView
/// * Author:      郭文龙
/// * Date:        2022/6/28 13:58
/// * Email:       guowenlong20000@sina.com
class MultiTypeListView extends ListView {
  final List<dynamic> items;
  final Register register;
  final MultiTypeAdapter multiTypeAdapter;

  MultiTypeListView({
    required this.items,
    required this.register,
    required this.multiTypeAdapter,
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry? padding,
    super.itemExtent,
    super.prototypeItem,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    List<Widget> children = const <Widget>[],
    int? semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    Clip clipBehavior = Clip.hardEdge,
  }) : super.builder(
          key: key,
          scrollDirection: scrollDirection,
          reverse: reverse,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap,
          padding: padding,
          itemCount: items.length,
          addAutomaticKeepAlives: addAutomaticKeepAlives,
          addRepaintBoundaries: addRepaintBoundaries,
          addSemanticIndexes: addSemanticIndexes,
          cacheExtent: cacheExtent,
          semanticChildCount: semanticChildCount,
          dragStartBehavior: dragStartBehavior,
          keyboardDismissBehavior: keyboardDismissBehavior,
          restorationId: restorationId,
          clipBehavior: clipBehavior,
          itemBuilder: (context, index) {
            var item = items[index];
            ItemViewBinder? itemViewBinder;
            var binders = multiTypeAdapter.itemViewBinders.where((element) => element.isMatch(item, index));
            if (binders.isNotEmpty) {
              itemViewBinder = binders.first;
            } else {
              var linker = multiTypeAdapter.map[item.runtimeType.hashCode];
              itemViewBinder = linker?.call(index, item);
            }
            return itemViewBinder?.buildWidget(context, item, index) ?? const Offstage();
          },
        );

  @override
  Widget build(BuildContext context) {
    register.call(multiTypeAdapter);
    return super.build(context);
  }
}
