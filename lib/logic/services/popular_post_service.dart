import 'dart:convert';

import 'package:http/http.dart';

import '../models/Popular/Post.dart';

Future<Post?> popularPost() async {
  final url = 'https://cp.dev.platina.uz/uz-latn/api/popular-posts/';
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'X-PLATINA-API-KEY': 'QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ',
  };
  final response = await get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    return Post.fromJson(
        jsonDecode(utf8.decode(response.body.codeUnits)));
  } else {
    return null;
  }
}
