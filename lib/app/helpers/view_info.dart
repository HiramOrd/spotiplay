import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'info.dart';
import 'loading.dart';

class HelperViewInfo {
  static void showLoadingOrError(
    BuildContext context, {
    required bool loading,
    String? infoData,
  }) {
    final helperLoading = context.read<HelperLoading>();
    (loading) ? helperLoading.show(context) : helperLoading.hide();

    if (infoData?.isNotEmpty == true) {
      HelperInfo.showSnackbar(context, '$infoData');
    }
  }
}
