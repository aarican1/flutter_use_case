import 'package:equatable/equatable.dart';

abstract class CustomSelectionModel extends Equatable {
  String get id;
  String get name;

  @override
  List<Object> get props => [id, name];
}
