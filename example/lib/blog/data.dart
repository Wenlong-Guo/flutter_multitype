import 'dart:math';

/// * Description: 测试数据
/// * Author:      郭文龙
/// * Date:        2022/7/7 0:12
/// * Email:       guowenlong20000@sina.com
class Data {
  static List<String> images = [
    "assets/images/blog/img_01.png",
    "assets/images/blog/img_02.png",
    "assets/images/blog/img_03.png",
    "assets/images/blog/img_04.png",
    "assets/images/blog/img_05.png",
    "assets/images/blog/img_06.png",
    "assets/images/blog/img_07.png",
    "assets/images/blog/img_08.png",
    "assets/images/blog/img_09.png",
  ];

  static List<String> getRandomImages({int? count}) {
    List<String> list = [];
    var thisCount = count ?? Random().nextInt(10);
    for (int i = 0; i < thisCount; i++) {
      list.add(images[Random().nextInt(8)]);
    }
    return list;
  }

  static List<dynamic> getBlogMessageData() {
    List<dynamic> list = [];
    list.add(BlogMessage("1", "宫城良田", "鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!鬼灭之刃好看!", getRandomImages(count: 1), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("2", "宫城良田", "鬼灭之刃好看\n鬼灭之刃好看\n鬼灭之刃好看\n鬼灭之刃好看\n鬼灭之刃好看\n鬼灭之刃好看\n鬼灭之刃好看", getRandomImages(count: 2), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("3", "宫城良田", "鬼武士!", getRandomImages(count: 3), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("4", "宫城良田", "鬼武士!", getRandomImages(count: 4), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("5", "宫城良田", "鬼武士!", getRandomImages(count: 5), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("6", "宫城良田", "鬼武士!", getRandomImages(count: 6), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("7", "宫城良田", "鬼武士!", getRandomImages(count: 7), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("8", "宫城良田", "鬼武士!", getRandomImages(count: 8), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    list.add(BlogMessage("9", "宫城良田", "鬼武士!", getRandomImages(), "assets/images/chat/image_c01.png"));
    return list;
  }
}

class BlogMessage {
  String? id;
  String? name;
  String? content;
  List<String>? imageUrls;
  String? avatar;

  BlogMessage(this.id, this.name, this.content, this.imageUrls, this.avatar);
}
