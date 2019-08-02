class StringUtils {
  static String capitalize(String str) {
    if (str == null) {
      throw ArgumentError('string: $str');
    }
    if (str.isEmpty) {
      return str;
    }
    return str.substring(0, 1).toUpperCase() + str.substring(1);
  }
}
