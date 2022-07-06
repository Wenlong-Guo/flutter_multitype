/// * Description:
/// * Author:      郭文龙
/// * Date:        2022/7/5 23:36
/// * Email:       guowenlong20000@sina.com
class Data {
  static List<dynamic> getChatMessageData() {
    List<dynamic> list = [];
    list.add(ChatMessage("1", 0, "Hello,\n boy!", null, "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage("2", 1, "Hei，\n girl \n", null, "assets/images/chat/image_c02.png", null, false));
    list.add(ChatMessage("3", 2, null, "assets/images/chat/image_gong.png", "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage("4", 3, null, "assets/images/bilibili/image_h01.png", "assets/images/chat/image_c02.png", null, false));
    list.add(ChatMessage("5", 4, "发个红包给你", null, "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage("6", 5, "还你一个红包", null, "assets/images/chat/image_c02.png", null, false));
    list.add(ChatMessage("7", 6, "给你发个表情", null, "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage("8", 7, "我也给你一个表情", null, "assets/images/chat/image_c02.png", null, false));
    return list;
  }
}

class ChatMessage {
  String? id;
  int? type;
  String? content;
  String? imageUrl;
  String? avatar;
  bool? isRedPacketMeGet;
  bool? isMe;

  ChatMessage(this.id, this.type, this.content, this.imageUrl, this.avatar, this.isRedPacketMeGet, this.isMe);
}
//
// class TextMe {
//   String? title;
//
//   TextMe(this.title);
// }
//
// class TextOther {
//   String? title;
//   String? url;
//
//   TextOther(this.title, this.url);
// }
//
// class ImageMe {
//   String? title;
//
//   ImageMe(this.title);
// }
//
// class ImageOther {
//   String? title;
//
//   ImageOther(this.title);
// }
//
// class RedPacketMe {
//   String? title;
//
//   RedPacketMe(this.title);
// }
//
// class RedPacketOther {
//   String? title;
//
//   RedPacketOther(this.title);
// }
//
// class UnknownMe {
//   String? title;
//
//   UnknownMe(this.title);
// }
//
// class UnknownOther {
//   String? title;
//
//   UnknownOther(this.title);
// }
