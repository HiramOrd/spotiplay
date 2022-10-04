class HelperString {
  static const defaultString = "--";
  // Return string or default character
  static String getString(dynamic data, [String? replacer]) {
    replacer = replacer ?? defaultString;
    final string = data?.toString();
    return string?.isNotEmpty == true ? string! : replacer;
  }
}
