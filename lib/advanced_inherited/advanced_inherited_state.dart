import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/advanced_inherited/advance_inherited.dart';

class AdvanceInherited extends InheritedWidget {
  const AdvanceInherited({required super.child, required this.data, super.key});

  final AdvancedInheritedProviderState data;

  static AdvancedInheritedProviderState of(BuildContext context) {
    final AdvanceInherited? result =
        context.dependOnInheritedWidgetOfExactType<AdvanceInherited>();

    if (result == null) {
      throw Exception('Could not find InheritedWidget');
    }
    return result.data;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}