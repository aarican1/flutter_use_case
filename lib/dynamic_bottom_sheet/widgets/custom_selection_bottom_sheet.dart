import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/dynamic_bottom_sheet/model/custom_selection_model.dart';

///a sheet allows the user  select to selection
class CustomSelectionBottomSheet<T extends CustomSelectionModel>
    extends StatelessWidget {
  const CustomSelectionBottomSheet._(
      {super.key, required this.items, this.selected});

  final List<T> items;
  final T? selected;

  ///Shows the  custom selection sheet.
  static Future<T?> show<T extends CustomSelectionModel>({
    required BuildContext context,
    required List<T> items,
    required T? selected,
  }) async {
    return await showModalBottomSheet<T>(
      context: context,
      builder: (context) =>
          CustomSelectionBottomSheet._(items: items, selected: selected),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(thickness: 5, indent: 150, endIndent: 150),
        ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final selection = items[index];
            return ListTile(
              onTap: () {
                Navigator.pop(context, selection);
              },
              leading: Icon(
                Icons.check_circle,
                color: selected == selection ? Colors.green : Colors.grey,
              ),
              title: Text(selection.name),
            );
          },
        ),
      ],
    );
  }
}
