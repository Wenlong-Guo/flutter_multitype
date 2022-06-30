import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'item_view_binder.dart';
import 'multitype_adapter.dart';

typedef Linker<T> = ItemViewBinder<T> Function(int position, dynamic item);

/// * Description: 多种 Type 的 ListView
/// * Author:      郭文龙
/// * Date:        2022/6/28 13:58
/// * Email:       guowenlong20000@sina.com
class MultiTypeListView extends ListView {
  final List<dynamic> items;
  final MultiTypeAdapter? adapter;

  MultiTypeListView({
    required this.items,
    required this.adapter,
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
      adapter!.itemViewBinders.forEach((element) {
        var flag = element.isMatch(item, index);
        "flag$flag";
      });
      var itemViewBinder = adapter.itemViewBinders.firstWhere((element) => element.isMatch(item, index)/*,orElse: () {}*/);
      var linker = itemViewBinder.findLinker(item, index);
      itemViewBinder = linker?.call(index,item) ?? itemViewBinder;
      return itemViewBinder.buildWidget(context, item, index);
    },
  );
}
