import 'package:flutter/material.dart';

import 'package:flutter_use_case_app/view_mixin.dart/parent_home_view_mixin.dart';

final class ParentHomeView extends StatefulWidget {
  const ParentHomeView({super.key});

  @override
  State<ParentHomeView> createState() => _ParentHomeViewState();
}

class _ParentHomeViewState extends State<ParentHomeView>
    with ParentHomeViewMixin {
  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parent Home View'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendRequestService,
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: _isLoading,
        builder: (context, value, child) {
          return value
              ? const CircularProgressIndicator()
              : const Text('Progress done or not started');
        },
      )),
    );
  }

  @override
  void showDialogForType(ParentData data) async {
    await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(data.name),
            ));
  }

  @override
  void loadingProgress(bool value) {
    _isLoading.value = value;
  }
}
