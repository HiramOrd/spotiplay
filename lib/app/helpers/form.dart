import 'package:flutter/material.dart';

class HelperForm {
  // Validate not null input
  static String? notNull(BuildContext context, String? text) {
    return text?.isEmpty == true ? 'Campo obligatorio' : null;
  }

  static String? password(BuildContext context, String? text) {
    const limit = 8;
    return (text?.length ?? 0) < limit ? 'Mínimo $limit caracteres' : null;
  }

  static String? email(BuildContext context, String? text) {
    String pattern = r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
    RegExp regex = RegExp(pattern);

    return (text == null || text.isEmpty || !regex.hasMatch(text))
        ? 'Correo electrónico obligatorio'
        : null;
  }
}
