import 'dart:convert';

import 'package:http/http.dart';

import '../models/Popular/Post.dart';

Future<Post?> post() async {
  final url = 'https://cp.dev.platina.uz/uz-latn/api/posts/';
  Map<String, String> headers = {
    'Content-Type': 'application/json',
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
