part of '../view/basic_view.dart';

// ignore: unused_element
class _BasicInputField extends StatelessWidget {
  const _BasicInputField(
      {required this.onChanged, required this.usernameController});
  final TextEditingController usernameController;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: usernameController,
      decoration: InputDecoration(
          hintText: "Enter a username",
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
