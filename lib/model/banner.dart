import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_shop_app/model/picture.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    required int id,
    required String text,
    @JsonKey(name: 'image_url')
    required String imageUrl,
    required String link,
    required String type,
    required List<Picture> images,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
