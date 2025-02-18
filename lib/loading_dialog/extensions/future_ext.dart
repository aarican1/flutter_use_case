// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/loading_dialog/widgets/custom_loading_dialog.dart';

extension CustomFutureLoading<T> on Future<T> {
  /// [BuildContext] is required to show dialog
  /// return the [Future<T>]  
  Future<T> makewithLoading(BuildContext context) async {
    return await CustomLoadingDialog.show(context: context, task: this);
  }
}
