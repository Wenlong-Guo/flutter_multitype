/// * Description: 测试数据
/// * Author:      郭文龙
/// * Date:        2022/7/5 23:36
/// * Email:       guowenlong20000@sina.com
class Data {
  static List<dynamic> getChatMessageData() {
    List<dynamic> list = [];
    list.add(ChatMessage(
        "1",
        0,
        "你好,我是宫城良田，虽然身高不高，但以灵活胜出，控球技术好且速度奇快，组织能力佳且弹跳力强，拥有敏捷的身手和正确的判断力，是全队进攻的发起人",
        null,
        "assets/images/chat/image_c01.png",
        null,
        true));
    list.add(ChatMessage(
        "2",
        1,
        "你好，我是湘北高中篮球队的王牌球员，司职小前锋，神奈川县五大最佳球员之一、全日本青少年队成员",
        null,
        "assets/images/chat/image_c02.png",
        null,
        false));
    list.add(ChatMessage("3", 2, null, "assets/images/chat/image_gong.png",
        "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage("4", 3, null, "assets/images/media/image_h01.png",
        "assets/images/chat/image_c02.png", null, false));
    list.add(ChatMessage("1", 0, "下方红包可以点击", null,
        "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage(
        "5", 4, null, null, "assets/images/chat/image_c01.png", false, true));
    list.add(ChatMessage(
        "6", 5, null, null, "assets/images/chat/image_c02.png", false, false));
    list.add(ChatMessage("2", 1, "上方红包可以点击！", null,
        "assets/images/chat/image_c02.png", null, false));
    list.add(ChatMessage(
        "7", 6, null, null, "assets/images/chat/image_c01.png", null, true));
    list.add(ChatMessage(
        "8", 7, null, null, "assets/images/chat/image_c02.png", null, false));
    return list;
  }
}

class ChatMessage {
  String? id;

  ///0-自己发的纯文字消息
  ///1-对方发的纯文字消息
  ///2-自己发的图片消息
  ///3-对方发的图片消息
  ///4-自己发的红包消息
  ///5-对方发的红包消息
  ///6以及以后 新版本的未知消息
  int? type;
  String? content;
  String? imageUrl;
  String? avatar;
  bool? isRedPacketMeGet;
  bool? isMe;

  ChatMessage(this.id, this.type, this.content, this.imageUrl, this.avatar,
      this.isRedPacketMeGet, this.isMe);
}
