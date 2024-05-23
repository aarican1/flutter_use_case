import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/basic_mvvm/view/basic_view_mixin.dart';

part '../view/basic_view_input_field.dart';

final class BasicView extends StatefulWidget {
  const BasicView({super.key});

  @override
  State<BasicView> createState() => _BasicViewState();
}

class _BasicViewState extends State<BasicView> with BasicViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic View"),
      ),
      body: Column(
       
        children: [
          _BasicInputField(
              onChanged: onControllerChange,
              usernameController: usernameController),
          _SaveButton(
              isValidateForUserNameTextController:
                  isValidateForUserNameTextController,
              onPressed: saveButtonOnPressed),
        ],
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton(
      {required this.isValidateForUserNameTextController,
      required this.onPressed});
  final ValueNotifier<bool> isValidateForUserNameTextController;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: isValidateForUserNameTextController,
        builder: (context, value, child) {
          return ElevatedButton(
              onPressed: !value ? null : onPressed,
              child: const Icon(Icons.check));
        });
  }
}
