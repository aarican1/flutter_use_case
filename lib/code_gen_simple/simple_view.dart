import 'package:codegen/gen/assets.gen.dart';
import 'package:codegen/gen/colors.gen.dart';
import 'package:codegen/generated/locale.keys.g.dart';
import 'package:flutter/material.dart';

class SimpleView extends StatelessWidget {
  const SimpleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.black,
        title: const Text("Code Generation"),
        actions: const [Text(LocaleKeys.hello)],
      ),
      body: Center(child: Assets.images.imageAsset.svg(package: 'codegen')),
    );
  }
}
