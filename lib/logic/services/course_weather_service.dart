import 'dart:convert';

import 'package:http/http.dart';
import 'package:platina/logic/models/Course.dart';
import 'package:platina/logic/models/Weather/Weather.dart';

Future<List<Course>?> courseService() async {
  const url = 'https://cbu.uz/uz/arkhiv-kursov-valyut/json/';
  Map<String, String> headers = {
    'accept': 'application/json',
  };
  final response = await get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    return (json.decode(utf8.decode(response.body.codeUnits)) as List)
        .map((i) => Course.fromJson(i))
        .toList();
  } else {
    print(response.statusCode);
    return null;
  }
}

Future<Weather?> weatherService() async {
  const url =
      'https://platina.uz/api/weather/forecast.json?q=Uzbekistan&days=5';
  Map<String, String> headers = {
    'accept': 'application/json',
    'X-PLATINA-API-KEY': 'QdO5hA3D.iSevNc03mulrumyLiPqlcM03M9clZdDQ',
  };
  final response = await get(Uri.parse(url), headers: headers);
  if (response.statusCode == 200) {
    return Weather.fromJson(jsonDecode(utf8.decode(response.body.codeUnits)));
  } else {
    print(response.statusCode);
    return null;
  }
}
