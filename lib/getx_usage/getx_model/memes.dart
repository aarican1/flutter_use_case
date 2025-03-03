
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'memes.freezed.dart';
part 'memes.g.dart';

@freezed
class Memes with _$Memes {
  const factory Memes({
    bool? success,
    Data? data,
  }) = _Memes;

  factory Memes.fromJson(Map<String, dynamic> json) => _$MemesFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<Meme>? memes,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Meme with _$Meme {
  const factory Meme({
    String? id,
    String? name,
    String? url,
    int? width,
    int? height,
    @JsonKey(name: "box_count") int? boxCount,
    int? captions,
  }) = _Meme;

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
}
