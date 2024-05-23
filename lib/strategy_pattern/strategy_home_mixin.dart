import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/strategy_pattern/core/strategy_bottom_shett.dart';
import 'package:flutter_use_case_app/strategy_pattern/core/strategy_context.dart';
import 'package:flutter_use_case_app/strategy_pattern/core/strategy_approve_dialog.dart';
import 'package:flutter_use_case_app/strategy_pattern/strategy_home_view.dart';
import 'package:flutter_use_case_app/strategy_pattern/core/strategy_license_view.dart';


mixin StrategyHomeMixin on State<StrategyHomeView> {
  Future<void> onStartFlow() async {
    final strategyContext = StrategyContext(
       StrategyApprove(),
      context: context,
    );
    var response = await strategyContext.run();

    if (response == StrategyResult.succes) {
      if (!mounted) return;
      strategyContext.changeStrategy( StrategyLicense());
      response = await strategyContext.run();
    }

    response ??= StrategyResult.failure;
    if (!mounted) return;
    strategyContext.changeStrategy(StrategyBottom(response));
    await strategyContext.run();
  }
}
