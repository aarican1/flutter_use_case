import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/strategy_pattern/core/strategy_context.dart';

class StrategyApprove with StrategyOperation {
  StrategyApprove(

  );
 

  @override
  Future<StrategyResult?> execute(BuildContext context) async {
    final response = await showDialog<StrategyResult?>(
        context: context,
        builder: (context) {
          return const StrategyDialog();
        });
    return response;
  }
}

class StrategyDialog extends StatelessWidget {
  const StrategyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Column(
      children: [
        const Text("----Random Approve Text------"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(StrategyResult.succes);
            },
            child: const Icon(Icons.check))
      ],
    ));
  }
}
