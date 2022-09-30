import 'package:flutter/material.dart';
import 'info.dart';
import 'loading.dart';

class HelperViewInfo {
  static void showLoadingOrError(
    BuildContext context, {
    required bool loading,
    String? infoData,
  }) {
    (loading) ? HelperLoading().show(context) : HelperLoading().hide();

    if (infoData?.isNotEmpty == true) {
      HelperInfo.showSnackbar(context, '$infoData');
    }
  }
}
