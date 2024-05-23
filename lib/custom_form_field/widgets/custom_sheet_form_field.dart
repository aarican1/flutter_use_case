import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/custom_form_field/widgets/custom_bottom_sheet.dart';

class CustomSheetFormField extends FormField<bool> {
  CustomSheetFormField({
    required title,
    super.key
  }) : super(
            validator: (bool? value) =>
                value ?? false ? null : 'Please read terms and conditions',
            builder: (FormFieldState<bool> state) {
              return Row(
                children: [
                  if (state.hasError)
                    const Icon(Icons.error, color: Colors.red),
                  Expanded(
                      child: TextButton(
                    onPressed: () async {
                      final response =
                          await CustomBottomSheet.show(state.context);
                      if (state.isValid) return;
                      state.didChange(response ?? false);
                    },
                    child: Text(
                      title,
                      style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline),
                    ),
                  ))
                ],
              );
            });
}
