import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_shop_app/model/picture.dart';

part 'banner.freezed.dart';

part 'banner.g.dart';

@freezed
class WindowBanner with _$WindowBanner {
  const factory WindowBanner({
    required int id,
    required String text,
    @JsonKey(name: 'image_url')
    required String imageUrl,
    required String link,
    /// can be imageBanner, titleBanner, markdownBanner, sliderBanner, buttonBanner
    required String type,
    required List<Picture> images,
  }) = _Banner;

  factory WindowBanner.fromJson(Map<String, dynamic> json) => _$WindowBannerFromJson(json);
}
