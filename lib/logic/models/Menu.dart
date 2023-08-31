class Menu {
  Menu({
    this.name,
    this.slug,
    this.color,
    this.order,
    this.link,
    this.language,
  });

  Menu.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    color = json['color'];
    order = json['order'];
    link = json['link'];
    language = json['language'];
  }

  String? name;
  String? slug;
  String? color;
  int? order;
  String? link;
  String? language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['color'] = color;
    map['order'] = order;
    map['link'] = link;
    map['language'] = language;
    return map;
  }
}
