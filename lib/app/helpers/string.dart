class HelperString {
  // Return string or default character
  static String getString(dynamic data, [String? replacer]) {
    replacer = replacer ?? "--";
    final string = data.toString();
    return string.isEmpty ? replacer : string;
  }
}
