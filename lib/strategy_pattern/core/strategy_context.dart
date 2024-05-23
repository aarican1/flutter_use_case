// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum StrategyResult { succes, failure }

mixin StrategyOperation {
  Future<StrategyResult?> execute(BuildContext context);
}

class StrategyContext {
  StrategyOperation _operation;
  final BuildContext context;
  StrategyContext(this._operation, {required this.context});

  void changeStrategy(StrategyOperation operation) {
    _operation = operation;
  }

  Future<StrategyResult?> run() {
    return _operation.execute(context);
  }
}
