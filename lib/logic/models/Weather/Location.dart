class Location {
  String? _name;
  String? _region;
  String? _country;
  double? _lat;
  double? _lon;
  String? _tzId;
  int? _localtimeEpoch;
  String? _localtime;

  Location(
      {String? name,
        String? region,
        String? country,
        double? lat,
        double? lon,
        String? tzId,
        int? localtimeEpoch,
        String? localtime}) {
    if (name != null) {
      _name = name;
    }
    if (region != null) {
      _region = region;
    }
    if (country != null) {
      _country = country;
    }
    if (lat != null) {
      _lat = lat;
    }
    if (lon != null) {
      _lon = lon;
    }
    if (tzId != null) {
      _tzId = tzId;
    }
    if (localtimeEpoch != null) {
      _localtimeEpoch = localtimeEpoch;
    }
    if (localtime != null) {
      _localtime = localtime;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get region => _region;
  set region(String? region) => _region = region;
  String? get country => _country;
  set country(String? country) => _country = country;
  double? get lat => _lat;
  set lat(double? lat) => _lat = lat;
  double? get lon => _lon;
  set lon(double? lon) => _lon = lon;
  String? get tzId => _tzId;
  set tzId(String? tzId) => _tzId = tzId;
  int? get localtimeEpoch => _localtimeEpoch;
  set localtimeEpoch(int? localtimeEpoch) => _localtimeEpoch = localtimeEpoch;
  String? get localtime => _localtime;
  set localtime(String? localtime) => _localtime = localtime;

  Location.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = _name;
    data['region'] = _region;
    data['country'] = _country;
    data['lat'] = _lat;
    data['lon'] = _lon;
    data['tz_id'] = _tzId;
    data['localtime_epoch'] = _localtimeEpoch;
    data['localtime'] = _localtime;
    return data;
  }
}