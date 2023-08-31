class Category {
  Category({
      this.id, 
      this.name, 
      this.slug, 
      this.color,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    color = json['color'];
  }
  int? id;
  String? name;
  String? slug;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['slug'] = slug;
    map['color'] = color;
    return map;
  }

}