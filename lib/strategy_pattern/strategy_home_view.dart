// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/strategy_pattern/strategy_home_mixin.dart';


class StrategyHomeView extends StatefulWidget {
  const StrategyHomeView({super.key});

  @override
  State<StrategyHomeView> createState() => _StrategyHomeViewState();
}

class _StrategyHomeViewState extends State<StrategyHomeView>
    with StrategyHomeMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Strategy Home View'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onStartFlow,
        backgroundColor: Colors.purple.shade200,
      ),
    );
  }
}
