abstract final class AppAssets {
  static const _weather = 'assets/icons/qweather';
  static const _material = 'assets/icons/material';

  static String weather(String name, {bool fill = false}) =>
    '$_weather/$name${fill ? '-fill' : ''}.svg';

  static const String air = '$_material/air.svg';
  static const String cancel = '$_material/cancel.svg';
  static const String error = '$_material/error.svg';
  static const String homeStorage = '$_material/home-storage.svg';
  static const String humidity = '$_material/humidity.svg';
  static const String location = '$_material/location.svg';
  static const String menu = '$_material/menu.svg';
  static const String modeDual = '$_material/mode-dual.svg';
  static const String search = '$_material/search.svg';
  static const String settings = '$_material/settings.svg';
  static const String sunnyAlt = '$_material/sunny.svg';
  static const String visibility = '$_material/visibility.svg';
}
