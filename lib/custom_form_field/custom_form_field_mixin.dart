import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/custom_form_field/custom_form_field_view.dart';

mixin CustomFormFieldViewMixin on State<CustomFormFieldView> {
  static const String customTitle = 'Custom Form Field';

  static const String readThisForm = 'Please read this form';
  static const String agree = 'I agree to terms and conditions';
  static const String lastName = 'Last Name';
  static const String firsName = 'First Name';

  static const String fIsValid = 'Form is valid';
  static const String submit = "Submit";
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final ValueNotifier<bool> valueNotifier = ValueNotifier<bool>(false);

// Form change notifier to validate to form
  void onFormChange() {
    valueNotifier.value = formkey.currentState?.validate() ?? false;
  }
}
