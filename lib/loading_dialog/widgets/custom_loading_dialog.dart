import 'dart:async';

import 'package:flutter/material.dart';

final class CustomLoadingDialog extends StatelessWidget {
  const CustomLoadingDialog({super.key});

  ///it will show a loading dialog.
  /// [BuildContext] is required to show dialog.
  /// [Future] is required to completed dialog.
  static Future show<T>({
    required BuildContext context,
    required Future<T> task,
  }) async {
    unawaited(showDialog(
      context: context,
      builder: (context) => const CustomLoadingDialog(),
    ));
    final result = await task;
    if (context.mounted) {
      Navigator.pop(context);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      elevation: 1,
      backgroundColor: Colors.transparent,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
