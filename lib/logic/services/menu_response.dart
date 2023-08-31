import 'dart:convert';

import 'package:http/http.dart';

import '../models/Menu.dart';

Future<List<Menu>?> menuResponse() async {
  final url = 'https://cp.dev.platina.uz/uz-latn/api/menu/';
  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=utf-8',
    'X-PLATINA-API-KEY': 'QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ',
  };
  final response = await get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    final menu = (json.decode(utf8.decode(response.body.codeUnits)) as List)
        .map((i) => Menu.fromJson(i))
        .toList();
    return menu;
  } else {
    return null;
  }
}
