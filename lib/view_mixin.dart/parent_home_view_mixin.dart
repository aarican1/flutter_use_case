import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/view_mixin.dart/parent_home_view.dart';

enum ParentData { first, second, third }

mixin ParentHomeViewMixin on State<ParentHomeView> {
  void showDialogForType(ParentData data);
  void loadingProgress(bool value);

  void sendRequestService() async {
    loadingProgress(true);
    final ParentData response = await _callServices();
    loadingProgress(false);
    if (!mounted) return;
    _showDialogForServiceResponse(response);
    setState(() {});
  }

  Future<ParentData> _callServices() async {
    final ParentData response = await Future.any([
      Future.delayed(const Duration(seconds: 2), () => ParentData.first),
      Future.delayed(const Duration(seconds: 2), () => ParentData.second),
      Future.delayed(const Duration(seconds: 2), () => ParentData.third)
    ]);
    return response;
  }

// kodda basit kavramsal hatalar olabilir önemli olan düşünce :)
  _showDialogForServiceResponse(ParentData data) async {
    switch (data) {
      case ParentData.first:
        showDialogForType(ParentData.first);

      case ParentData.second:
        showDialogForType(ParentData.second);
      case ParentData.third:
        showDialogForType(ParentData.second);
    }
  }
}
