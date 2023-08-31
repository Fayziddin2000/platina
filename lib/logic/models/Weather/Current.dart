import 'Condition.dart';

class Current {
  int? _lastUpdatedEpoch;
  String? _lastUpdated;
  int? _tempC;
  int? _tempF;
  int? _isDay;
  Condition? _condition;
  double? _windMph;
  double? _windKph;
  int? _windDegree;
  String? _windDir;
  double? _pressureMb;
  double? _pressureIn;
  int? _precipMm;
  int? _precipIn;
  int? _humidity;
  int? _cloud;
  double? _feelslikeC;
  double? _feelslikeF;
  int? _visKm;
  int? _visMiles;
  int? _uv;
  double? _gustMph;
  double? _gustKph;

  Current(
      {int? lastUpdatedEpoch,
        String? lastUpdated,
        int? tempC,
        int? tempF,
        int? isDay,
        Condition? condition,
        double? windMph,
        double? windKph,
        int? windDegree,
        String? windDir,
        double? pressureMb,
        double? pressureIn,
        int? precipMm,
        int? precipIn,
        int? humidity,
        int? cloud,
        double? feelslikeC,
        double? feelslikeF,
        int? visKm,
        int? visMiles,
        int? uv,
        double? gustMph,
        double? gustKph}) {
    if (lastUpdatedEpoch != null) {
      _lastUpdatedEpoch = lastUpdatedEpoch;
    }
    if (lastUpdated != null) {
      _lastUpdated = lastUpdated;
    }
    if (tempC != null) {
      _tempC = tempC;
    }
    if (tempF != null) {
      _tempF = tempF;
    }
    if (isDay != null) {
      _isDay = isDay;
    }
    if (condition != null) {
      _condition = condition;
    }
    if (windMph != null) {
      _windMph = windMph;
    }
    if (windKph != null) {
      _windKph = windKph;
    }
    if (windDegree != null) {
      _windDegree = windDegree;
    }
    if (windDir != null) {
      _windDir = windDir;
    }
    if (pressureMb != null) {
      _pressureMb = pressureMb;
    }
    if (pressureIn != null) {
      _pressureIn = pressureIn;
    }
    if (precipMm != null) {
      _precipMm = precipMm;
    }
    if (precipIn != null) {
      _precipIn = precipIn;
    }
    if (humidity != null) {
      _humidity = humidity;
    }
    if (cloud != null) {
      _cloud = cloud;
    }
    if (feelslikeC != null) {
      _feelslikeC = feelslikeC;
    }
    if (feelslikeF != null) {
      _feelslikeF = feelslikeF;
    }
    if (visKm != null) {
      _visKm = visKm;
    }
    if (visMiles != null) {
      _visMiles = visMiles;
    }
    if (uv != null) {
      _uv = uv;
    }
    if (gustMph != null) {
      _gustMph = gustMph;
    }
    if (gustKph != null) {
      _gustKph = gustKph;
    }
  }

  int? get lastUpdatedEpoch => _lastUpdatedEpoch;
  set lastUpdatedEpoch(int? lastUpdatedEpoch) =>
      _lastUpdatedEpoch = lastUpdatedEpoch;
  String? get lastUpdated => _lastUpdated;
  set lastUpdated(String? lastUpdated) => _lastUpdated = lastUpdated;
  int? get tempC => _tempC;
  set tempC(int? tempC) => _tempC = tempC;
  int? get tempF => _tempF;
  set tempF(int? tempF) => _tempF = tempF;
  int? get isDay => _isDay;
  set isDay(int? isDay) => _isDay = isDay;
  Condition? get condition => _condition;
  set condition(Condition? condition) => _condition = condition;
  double? get windMph => _windMph;
  set windMph(double? windMph) => _windMph = windMph;
  double? get windKph => _windKph;
  set windKph(double? windKph) => _windKph = windKph;
  int? get windDegree => _windDegree;
  set windDegree(int? windDegree) => _windDegree = windDegree;
  String? get windDir => _windDir;
  set windDir(String? windDir) => _windDir = windDir;
  double? get pressureMb => _pressureMb;
  set pressureMb(double? pressureMb) => _pressureMb = pressureMb;
  double? get pressureIn => _pressureIn;
  set pressureIn(double? pressureIn) => _pressureIn = pressureIn;
  int? get precipMm => _precipMm;
  set precipMm(int? precipMm) => _precipMm = precipMm;
  int? get precipIn => _precipIn;
  set precipIn(int? precipIn) => _precipIn = precipIn;
  int? get humidity => _humidity;
  set humidity(int? humidity) => _humidity = humidity;
  int? get cloud => _cloud;
  set cloud(int? cloud) => _cloud = cloud;
  double? get feelslikeC => _feelslikeC;
  set feelslikeC(double? feelslikeC) => _feelslikeC = feelslikeC;
  double? get feelslikeF => _feelslikeF;
  set feelslikeF(double? feelslikeF) => _feelslikeF = feelslikeF;
  int? get visKm => _visKm;
  set visKm(int? visKm) => _visKm = visKm;
  int? get visMiles => _visMiles;
  set visMiles(int? visMiles) => _visMiles = visMiles;
  int? get uv => _uv;
  set uv(int? uv) => _uv = uv;
  double? get gustMph => _gustMph;
  set gustMph(double? gustMph) => _gustMph = gustMph;
  double? get gustKph => _gustKph;
  set gustKph(double? gustKph) => _gustKph = gustKph;

  Current.fromJson(Map<String, dynamic> json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null
        ? Condition.fromJson(json['condition'])
        : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['last_updated_epoch'] = _lastUpdatedEpoch;
    data['last_updated'] = _lastUpdated;
    data['temp_c'] = _tempC;
    data['temp_f'] = _tempF;
    data['is_day'] = _isDay;
    if (_condition != null) {
      data['condition'] = _condition!.toJson();
    }
    data['wind_mph'] = _windMph;
    data['wind_kph'] = _windKph;
    data['wind_degree'] = _windDegree;
    data['wind_dir'] = _windDir;
    data['pressure_mb'] = _pressureMb;
    data['pressure_in'] = _pressureIn;
    data['precip_mm'] = _precipMm;
    data['precip_in'] = _precipIn;
    data['humidity'] = _humidity;
    data['cloud'] = _cloud;
    data['feelslike_c'] = _feelslikeC;
    data['feelslike_f'] = _feelslikeF;
    data['vis_km'] = _visKm;
    data['vis_miles'] = _visMiles;
    data['uv'] = _uv;
    data['gust_mph'] = _gustMph;
    data['gust_kph'] = _gustKph;
    return data;
  }
}