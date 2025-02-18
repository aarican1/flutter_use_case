import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/dynamic_bottom_sheet/model/custom_selection_model.dart';
import 'package:flutter_use_case_app/dynamic_bottom_sheet/model/product_model_factory.dart';
import 'package:flutter_use_case_app/dynamic_bottom_sheet/widgets/custom_selection_bottom_sheet.dart';

class CustomSelectionView extends StatefulWidget {
  const CustomSelectionView({super.key});

  @override
  State<CustomSelectionView> createState() => _CustomSelectionViewState();
}

class _CustomSelectionViewState extends State<CustomSelectionView> {
  final ValueNotifier<CustomSelectionModel?> selectionModelNotifier =
      ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Bottom Sheet"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await CustomSelectionBottomSheet.show(
              context: context,
              items: ProductModelFactory.shopItems().items,
              selected: selectionModelNotifier.value);

          selectionModelNotifier.value = response;
        },
        child: const Icon(Icons.add),
      ),
      body: ValueListenableBuilder<CustomSelectionModel?>(
          valueListenable: selectionModelNotifier,
          builder: (context, value, child) {
            return Center(
              child: Text(value?.name ?? ""),
            );
          }),
    );
  }
}
