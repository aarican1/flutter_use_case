// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Memes _$MemesFromJson(Map<String, dynamic> json) {
  return _Memes.fromJson(json);
}

/// @nodoc
mixin _$Memes {
  bool? get success => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this Memes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemesCopyWith<Memes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemesCopyWith<$Res> {
  factory $MemesCopyWith(Memes value, $Res Function(Memes) then) =
      _$MemesCopyWithImpl<$Res, Memes>;
  @useResult
  $Res call({bool? success, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MemesCopyWithImpl<$Res, $Val extends Memes>
    implements $MemesCopyWith<$Res> {
  _$MemesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemesImplCopyWith<$Res> implements $MemesCopyWith<$Res> {
  factory _$$MemesImplCopyWith(
          _$MemesImpl value, $Res Function(_$MemesImpl) then) =
      __$$MemesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MemesImplCopyWithImpl<$Res>
    extends _$MemesCopyWithImpl<$Res, _$MemesImpl>
    implements _$$MemesImplCopyWith<$Res> {
  __$$MemesImplCopyWithImpl(
      _$MemesImpl _value, $Res Function(_$MemesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MemesImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemesImpl implements _Memes {
  const _$MemesImpl({this.success, this.data});

  factory _$MemesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemesImplFromJson(json);

  @override
  final bool? success;
  @override
  final Data? data;

  @override
  String toString() {
    return 'Memes(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemesImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemesImplCopyWith<_$MemesImpl> get copyWith =>
      __$$MemesImplCopyWithImpl<_$MemesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemesImplToJson(
      this,
    );
  }
}

abstract class _Memes implements Memes {
  const factory _Memes({final bool? success, final Data? data}) = _$MemesImpl;

  factory _Memes.fromJson(Map<String, dynamic> json) = _$MemesImpl.fromJson;

  @override
  bool? get success;
  @override
  Data? get data;

  /// Create a copy of Memes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemesImplCopyWith<_$MemesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Meme>? get memes => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<Meme>? memes});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memes = freezed,
  }) {
    return _then(_value.copyWith(
      memes: freezed == memes
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meme>? memes});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memes = freezed,
  }) {
    return _then(_$DataImpl(
      memes: freezed == memes
          ? _value._memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<Meme>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<Meme>? memes}) : _memes = memes;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Meme>? _memes;
  @override
  List<Meme>? get memes {
    final value = _memes;
    if (value == null) return null;
    if (_memes is EqualUnmodifiableListView) return _memes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(memes: $memes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._memes, _memes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_memes));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<Meme>? memes}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<Meme>? get memes;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meme _$MemeFromJson(Map<String, dynamic> json) {
  return _Meme.fromJson(json);
}

/// @nodoc
mixin _$Meme {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "box_count")
  int? get boxCount => throw _privateConstructorUsedError;
  int? get captions => throw _privateConstructorUsedError;

  /// Serializes this Meme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemeCopyWith<Meme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemeCopyWith<$Res> {
  factory $MemeCopyWith(Meme value, $Res Function(Meme) then) =
      _$MemeCopyWithImpl<$Res, Meme>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      @JsonKey(name: "box_count") int? boxCount,
      int? captions});
}

/// @nodoc
class _$MemeCopyWithImpl<$Res, $Val extends Meme>
    implements $MemeCopyWith<$Res> {
  _$MemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
    Object? captions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemeImplCopyWith<$Res> implements $MemeCopyWith<$Res> {
  factory _$$MemeImplCopyWith(
          _$MemeImpl value, $Res Function(_$MemeImpl) then) =
      __$$MemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? url,
      int? width,
      int? height,
      @JsonKey(name: "box_count") int? boxCount,
      int? captions});
}

/// @nodoc
class __$$MemeImplCopyWithImpl<$Res>
    extends _$MemeCopyWithImpl<$Res, _$MemeImpl>
    implements _$$MemeImplCopyWith<$Res> {
  __$$MemeImplCopyWithImpl(_$MemeImpl _value, $Res Function(_$MemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? boxCount = freezed,
    Object? captions = freezed,
  }) {
    return _then(_$MemeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      boxCount: freezed == boxCount
          ? _value.boxCount
          : boxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      captions: freezed == captions
          ? _value.captions
          : captions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemeImpl implements _Meme {
  const _$MemeImpl(
      {this.id,
      this.name,
      this.url,
      this.width,
      this.height,
      @JsonKey(name: "box_count") this.boxCount,
      this.captions});

  factory _$MemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemeImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  @override
  @JsonKey(name: "box_count")
  final int? boxCount;
  @override
  final int? captions;

  @override
  String toString() {
    return 'Meme(id: $id, name: $name, url: $url, width: $width, height: $height, boxCount: $boxCount, captions: $captions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.boxCount, boxCount) ||
                other.boxCount == boxCount) &&
            (identical(other.captions, captions) ||
                other.captions == captions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, width, height, boxCount, captions);

  /// Create a copy of Meme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemeImplCopyWith<_$MemeImpl> get copyWith =>
      __$$MemeImplCopyWithImpl<_$MemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemeImplToJson(
      this,
    );
  }
}

abstract class _Meme implements Meme {
  const factory _Meme(
      {final String? id,
      final String? name,
      final String? url,
      final int? width,
      final int? height,
      @JsonKey(name: "box_count") final int? boxCount,
      final int? captions}) = _$MemeImpl;

  factory _Meme.fromJson(Map<String, dynamic> json) = _$MemeImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(name: "box_count")
  int? get boxCount;
  @override
  int? get captions;

  /// Create a copy of Meme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemeImplCopyWith<_$MemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
