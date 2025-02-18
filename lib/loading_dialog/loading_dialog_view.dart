import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/loading_dialog/extensions/future_ext.dart';

class LoadingDialogView extends StatefulWidget {
  const LoadingDialogView({super.key});

  @override
  State<LoadingDialogView> createState() => _LoadingDialogViewState();
}

class _LoadingDialogViewState extends State<LoadingDialogView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response =
              await testSampleServiceRequest().makewithLoading(context);
          //test
          print(response);
        },
        child: const Text("Show Loading Dialog"),
      ),
    );
  }

  Future<String> testSampleServiceRequest() async {
    await Future.delayed(const Duration(seconds: 1));

    return "test text";
  }
}
