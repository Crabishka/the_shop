import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture.freezed.dart';

part 'picture.g.dart';

@freezed
class Picture with _$Picture {
  const factory Picture({
    required int id,
    required String url,
    required String link,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
