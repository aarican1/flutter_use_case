import 'package:flutter/material.dart';

class CustomCheckBoxField extends FormField<bool> {
  CustomCheckBoxField({required title, super.key})
      : super(
            initialValue: false,
            validator: (bool? value) => value ?? false ? null : 'Please agree ',
            builder: (FormFieldState<bool> state) {
              return Row(children: [
                if (state.hasError)
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                Expanded(
                  child: CheckboxListTile(
                      value: state.value ?? false,
                      title: Text(title),
                      onChanged: state.didChange),
                )
              ]);
            });
}
