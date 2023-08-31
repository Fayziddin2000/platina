import 'Category.dart';
import 'Gallery.dart';

class Results {
  Results({
      this.id, 
      this.category, 
      this.title, 
      this.shortDescription, 
      this.relatesTo, 
      this.description, 
      this.slug, 
      this.authorOffered, 
      this.publish, 
      this.isPinned, 
      this.numberOfViews, 
      this.image, 
      this.imageExtraLarge, 
      this.imageLarge, 
      this.imageMedium, 
      this.imageSmall, 
      this.imageSource, 
      this.imageName, 
      this.gallery, 
      this.shortUrl, 
      this.youtubeLink, 
      this.tags, 
      this.expiredAt, 
      this.language,});

  Results.fromJson(dynamic json) {
    id = json['id'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    title = json['title'];
    shortDescription = json['short_description'];
    relatesTo = json['relates_to'];
    description = json['description'];
    slug = json['slug'];
    authorOffered = json['author_offered'];
    publish = json['publish'];
    isPinned = json['is_pinned'];
    numberOfViews = json['number_of_views'];
    image = json['image'];
    imageExtraLarge = json['image_extra_large'];
    imageLarge = json['image_large'];
    imageMedium = json['image_medium'];
    imageSmall = json['image_small'];
    imageSource = json['image_source'];
    imageName = json['image_name'];
    if (json['gallery'] != null) {
      gallery = [];
      json['gallery'].forEach((v) {
        gallery?.add(Gallery.fromJson(v));
      });
    }
    shortUrl = json['short_url'];
    youtubeLink = json['youtube_link'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    expiredAt = json['expired_at'];
    language = json['language'];
  }
  int? id;
  Category? category;
  String? title;
  String? shortDescription;
  int? relatesTo;
  String? description;
  String? slug;
  bool? authorOffered;
  String? publish;
  bool? isPinned;
  int? numberOfViews;
  String? image;
  String? imageExtraLarge;
  String? imageLarge;
  String? imageMedium;
  String? imageSmall;
  String? imageSource;
  String? imageName;
  List<Gallery>? gallery;
  dynamic shortUrl;
  dynamic youtubeLink;
  List<String>? tags;
  dynamic expiredAt;
  String? language;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    map['title'] = title;
    map['short_description'] = shortDescription;
    map['relates_to'] = relatesTo;
    map['description'] = description;
    map['slug'] = slug;
    map['author_offered'] = authorOffered;
    map['publish'] = publish;
    map['is_pinned'] = isPinned;
    map['number_of_views'] = numberOfViews;
    map['image'] = image;
    map['image_extra_large'] = imageExtraLarge;
    map['image_large'] = imageLarge;
    map['image_medium'] = imageMedium;
    map['image_small'] = imageSmall;
    map['image_source'] = imageSource;
    map['image_name'] = imageName;
    if (gallery != null) {
      map['gallery'] = gallery?.map((v) => v.toJson()).toList();
    }
    map['short_url'] = shortUrl;
    map['youtube_link'] = youtubeLink;
    map['tags'] = tags;
    map['expired_at'] = expiredAt;
    map['language'] = language;
    return map;
  }

}