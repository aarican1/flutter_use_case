// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemesImpl _$$MemesImplFromJson(Map<String, dynamic> json) => _$MemesImpl(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemesImplToJson(_$MemesImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      memes: (json['memes'] as List<dynamic>?)
          ?.map((e) => Meme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'memes': instance.memes,
    };

_$MemeImpl _$$MemeImplFromJson(Map<String, dynamic> json) => _$MemeImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      boxCount: (json['box_count'] as num?)?.toInt(),
      captions: (json['captions'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MemeImplToJson(_$MemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'box_count': instance.boxCount,
      'captions': instance.captions,
    };
