// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PictureImpl _$$PictureImplFromJson(Map<String, dynamic> json) =>
    _$PictureImpl(
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      hdurl: json['hdurl'] as String?,
      mediaType: json['media_type'] as String,
      serviceVersion: json['service_version'] as String,
      thumbnailUrl: json['thumbnail_url'] as String?,
      title: json['title'] as String,
      url: json['url'] as String,
      copyright: json['copyright'] as String?,
    );

Map<String, dynamic> _$$PictureImplToJson(_$PictureImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'hdurl': instance.hdurl,
      'media_type': instance.mediaType,
      'service_version': instance.serviceVersion,
      'thumbnail_url': instance.thumbnailUrl,
      'title': instance.title,
      'url': instance.url,
      'copyright': instance.copyright,
    };
