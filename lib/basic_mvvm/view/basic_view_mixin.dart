import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/basic_mvvm/basic_model.dart';
import 'package:flutter_use_case_app/basic_mvvm/basic_view_model.dart';
import 'package:flutter_use_case_app/basic_mvvm/core/basic_cache.dart';
import 'package:flutter_use_case_app/basic_mvvm/view/basic_view.dart';


mixin BasicViewMixin on State<BasicView> {
  final TextEditingController usernameController = TextEditingController();
  final BasicViewModel _basicViewModel = BasicViewModel(cache: BasicCache());
  final ValueNotifier<bool> isValidateForUserNameTextController =
      ValueNotifier(false);

  String get valueForName => usernameController.value.text;
  BasicModel get basicModel => BasicModel(userName: valueForName);

// Username controller
  void onControllerChange(String value) {
    isValidateForUserNameTextController.value = value.length > 4;
  }

  Future<void> saveButtonOnPressed() async {
    final response = await _basicViewModel.controlUserName(basicModel);
    controlToResult(response: response);
  }

  void controlToResult({bool response = false}) async {
    if (response) {
      await _basicViewModel.saveUserNamToCache(basicModel);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Success')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Error')));
    }
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
  }
}
