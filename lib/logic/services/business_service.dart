import 'dart:convert';

import 'package:http/http.dart';
import 'package:platina/logic/models/business/Business.dart';

Future<List<Business>?> business() async {
  final url = 'https://cp.dev.platina.uz/uz-latn/api/posts/business/';
  Map<String, String> headers = {
    'accept': 'application/json',
    'X-PLATINA-API-KEY': 'QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ',
  };
  final response = await get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    return (json.decode(utf8.decode(response.body.codeUnits)) as List)
        .map((i) => Business.fromJson(i))
        .toList();
  } else {
    return null;
  }
}
