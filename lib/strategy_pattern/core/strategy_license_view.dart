// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_use_case_app/strategy_pattern/core/strategy_context.dart';

class StrategyLicense with StrategyOperation {
  StrategyLicense();

  @override
  Future<StrategyResult?> execute(BuildContext context) async {
    final response = await Navigator.of(context)
        .push<StrategyResult?>(MaterialPageRoute<StrategyResult>(
      builder: (_) => const StrategyLicenseView(),
    ));
    return response;
  }
}

class StrategyLicenseView extends StatefulWidget {
  const StrategyLicenseView({super.key});

  @override
  State<StrategyLicenseView> createState() => _StrategyLicenseViewState();
}

class _StrategyLicenseViewState extends State<StrategyLicenseView> {
  bool _isCheck = false;

  void _updateChecker(bool? value) {
    if (value == null) return;
    if (_isCheck == value) return;

    setState(() {
      _isCheck = value;
      print(_isCheck);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("-------Random---------"),
            Checkbox(
              value: _isCheck,
              onChanged: _updateChecker,
            ),
            ElevatedButton(
                onPressed: !_isCheck
                    ? null
                    : () {
                        Navigator.of(context).pop(StrategyResult.succes);
                      },
                child: const Icon(Icons.check))
          ],
        ),
      ),
    );
  }
}
