import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture.freezed.dart';
part 'picture.g.dart';

@freezed
class Picture with _$Picture {
  factory Picture({
    required final String date,
    required final String explanation,
    final String? hdurl,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'media_type') required final String mediaType,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'service_version') required final String serviceVersion,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    required final String title,
    required final String url,
    String? copyright,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
