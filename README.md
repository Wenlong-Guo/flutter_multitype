# Flutter Multitype
[![License](https://img.shields.io/github/license/Wenlong-Guo/flutter_multitype)](https://github.com/Wenlong-Guo/flutter_multitype/blob/master/LICENSE)
![Release](https://img.shields.io/github/v/release/Wenlong-Guo/flutter_multitype?include_prereleases)
[![likes](https://badges.bar/flutter_multitype/likes)](https://pub.dev/packages/flutter_multitype/score)
[![popularity](https://badges.bar/flutter_multitype/popularity)](https://pub.dev/packages/flutter_multitype/score)
[![pub points](https://badges.bar/flutter_multitype/pub%20points)](https://pub.dev/packages/flutter_multitype/score)
- [About Flutter Multitype](#about-flutter-multitype)
- [Installing](#Installing)
- [Function](#Function)
- [Usage](#Usage)
- [Advanced usage](#advanced-usage)
    - [One to many](#one-to-many)
    - [Register unsupported data of item widget](#register-unsupported-data-of-item-widget)
    - [Easy to debug](#easy-to-debug)
- [Screenshots](#screenshots)
    - [Chat Sample](#chat-sample)
    - [Media Sample](#media-sample)
    - [Blog Sample](#blog-sample)
- [Thanks](#thanks)
- [关于作者](#关于作者)

# About Flutter Multitype

:fire::fire::fire:Easier and more flexible to create multiple types for Flutter ListView.

# Installing

Add `flutter_multitype: ^0.9.2` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_multitype: ^0.9.2
```

Import get in files that it will be used:

```dart
import 'package:flutter_multitype/multitype.dart';
```

# Function

`flutter_multitype` can be used to decouple and improve readability when items in a ListView have
different types of layouts and are dynamically indeterminate .

# Usage

one data bind one widget

## Step 1. Create a data class, for example:

```dart
class CategoryName {
  String? title;

  CategoryName(this.title);
}

class CategorySubContent {
  String? title;
  String? url;

  CategorySubContent(this.title, this.url);
}
```

## Step 2. Create a class extends ItemViewBinder<T>, for example:

```dart
class CategoryViewBinder extends ItemViewBinder<CategoryName> {
  @override
  Widget buildWidget(BuildContext context, CategoryName item, int index) {
    return const Text("Category");
  }
}

class ContentViewBinder extends ItemViewBinder<List<CategorySubContent>> {
  @override
  Widget buildWidget(BuildContext context, List<CategorySubContent> item, int index) {
    return const Text("Content");
  }
}
```

## Step 3. register your types and setup your ListView, for example:

```dart
class _MediaPageState extends State<MediaPage> {
  List<dynamic> items = Data.getMediaData();
  MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
    adapter.register(CategoryViewBinder());
    adapter.register(ContentViewBinder());
    adapter.setDebugViewBinderEnable(isEnable: true);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Page"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return adapter.getItemBuilder(context, index, items[index]);
        },
      ),
    );
  }
}
```

Multi type item widget ListView is complete

# Advanced usage

## One to many

one data bind many widget,for example:

```dart
/// ChatMessage will be bind TextMeViewBinder、TextOtherViewBinder、UnknownMeViewBinder、UnknownOtherViewBinder four Widget
MultiTypeAdapter adapter = MultiTypeAdapter.newInstance((adapter) {
adapter.registerOneToMany<ChatMessage>((position, item) {
  var message = item as ChatMessage;
  if (message.isMe == true) {
    switch (message.type) {
      case 0:
        {
          return TextMeViewBinder();
        }
      default:
        {
          return UnknownMeViewBinder();
        }
    }
  } else {
    switch (message.type) {
      case 1:
        {
          return TextOtherViewBinder();
        }
      default:
        {
          return UnknownOtherViewBinder();
        }
    }
  }
});
```

## Register unsupported data of item widget

If someone items data have not register, it will be bind unsupportedViewBinder. For example: Old
version received new version data, you can show this unsupportedViewBinder for tips user update app.
But if your data is same type,this function is not suitable.You can use in different type data.

```
void registerUnsupportedViewBinder(ItemViewBinder unsupportedViewBinder)
```

## Easy to debug
If someone items data have not register, it will be bind debugViewBinder if someone items data have
not register,at the same time register unsupportedViewBinder and debugViewBinder, debugViewBinder
will be cover unsupportedViewBinder. Don't worry,debugViewBinder is never show in release,it just
show in `!bool.fromEnvironment("dart.vm.product")` .
```
void setDebugViewBinderEnable({bool isEnable = !inProduction, ItemViewBinder? debugViewBinder})
```

# Screenshots

## Chat Sample

<img src="https://github.com/Wenlong-Guo/flutter_multitype/blob/master/example/screenshots/screenshots_03.jpg" width=500/>

## Media Sample

<img src="https://github.com/Wenlong-Guo/flutter_multitype/blob/master/example/screenshots/screenshots_02.jpg" width=500/>

## Blog Sample

<img src="https://github.com/Wenlong-Guo/flutter_multitype/blob/master/example/screenshots/screenshots_01.jpg" width=500/>

# Thanks

[MultiType](https://github.com/drakeet/MultiType)

# 关于作者

GitHub &nbsp;: [Wenlong-Guo](https://github.com/Wenlong-Guo)  
Email &nbsp;&nbsp;&nbsp;&nbsp;: guowenlong20000@sina.com   
WeChat : xiaoguo9745


