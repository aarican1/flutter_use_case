import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  static Future<bool?> show(BuildContext context) {
    return showModalBottomSheet<bool>(
      context: context,
      builder: (BuildContext context) {
        return const CustomBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('data' * 30),
        IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: const Icon(Icons.check_rounded))
      ],
    );
  }
}
