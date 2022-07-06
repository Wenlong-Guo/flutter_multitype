
/// * Description: 测试数据
/// * Author:      郭文龙
/// * Date:        2022/7/4 10:39
/// * Email:       guowenlong20000@sina.com
class Data {
  static List<dynamic> getMediaData() {
    List<dynamic> list = [];
    List<CategorySubContent> subCN = [];
    list.add(CategoryName("灌篮高手"));
    subCN.add(CategorySubContent("合照1", "image_h01.png"));
    subCN.add(CategorySubContent("樱木花道", "image_h02.png"));
    subCN.add(CategorySubContent("合照2", "image_h03.png"));
    subCN.add(CategorySubContent("流川枫&樱木花道", "image_h04.png"));
    list.add(subCN);

    List<CategorySubContent> subEN = [];
    list.add(CategoryName("Slam Dunk"));
    subEN.add(CategorySubContent("Group Photo 1", "image_h01.png"));
    subEN.add(CategorySubContent("Sakuragi Hanamichi", "image_h02.png"));
    subEN.add(CategorySubContent("Group Photo 2", "image_h03.png"));
    subEN.add(CategorySubContent("Rukawa Kaede & Sakuragi Hanamichi", "image_h04.png"));
    list.add(subEN);

    List<CategorySubContent> subJa = [];
    list.add(CategoryName("スラムダンク"));
    subJa.add(CategorySubContent("グループ写真1", "image_h01.png"));
    subJa.add(CategorySubContent("さくらぎ はなみち", "image_h02.png"));
    subJa.add(CategorySubContent("グループ写真2", "image_h03.png"));
    subJa.add(CategorySubContent("るかわ かえで & さくらぎ はなみち", "image_h04.png"));
    list.add(subJa);
    return list;
  }
}

class CategoryName {
  String? title;

  CategoryName(this.title);
}

class CategorySubContent {
  String? title;
  String? url;

  CategorySubContent(this.title, this.url);
}
