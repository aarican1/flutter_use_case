import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/custom_form_field/custom_form_field_mixin.dart';
import 'package:flutter_use_case_app/custom_form_field/custom_validator.dart';
import 'package:flutter_use_case_app/custom_form_field/widgets/custom_check_box_field.dart';
import 'package:flutter_use_case_app/custom_form_field/widgets/custom_sheet_form_field.dart';

final class CustomFormFieldView extends StatefulWidget {
  const CustomFormFieldView({super.key});

  @override
  State<CustomFormFieldView> createState() => _CustomFormFieldViewState();
}

class _CustomFormFieldViewState extends State<CustomFormFieldView>
    with CustomFormFieldViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(CustomFormFieldViewMixin.customTitle),
      ),
      body: Form(
        key: formkey,
        onChanged: onFormChange,
        child: Column(
          children: [
            const _FirstNameTextFormField(
              label: CustomFormFieldViewMixin.firsName,
            ),
            const _LastNameTextFormField(
                label: CustomFormFieldViewMixin.firsName),
            CustomSheetFormField(title: CustomFormFieldViewMixin.readThisForm),
            CustomCheckBoxField(title: CustomFormFieldViewMixin.agree),
            _SubmitButton(
                title: CustomFormFieldViewMixin.submit,
                formtext: CustomFormFieldViewMixin.fIsValid,
                valueNotifier: valueNotifier)
          ],
        ),
      ),
    );
  }
}

class _FirstNameTextFormField extends StatelessWidget {
  const _FirstNameTextFormField({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => CustomValidator(value: value).checker,
      decoration: InputDecoration(labelText: label),
    );
  }
}

class _LastNameTextFormField extends StatelessWidget {
  const _LastNameTextFormField({required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => CustomValidator(value: value).checker,
      decoration: InputDecoration(labelText: label),
    );
  }
}

final class _SubmitButton extends StatelessWidget {
  const _SubmitButton(
      {required this.valueNotifier,
      required this.title,
      required this.formtext});
  final String title;
  final String formtext;
  final ValueNotifier<bool> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return ElevatedButton(
            onPressed: value
                ? () {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(formtext)));
                  }
                : null,
            child: Text(title));
      },
    );
  }
}
