import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_product_dto.g.dart';

part 'filter_product_dto.freezed.dart';

@freezed
class FilterProductDto with _$FilterProductDto {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory FilterProductDto({
    String? brand,
    @JsonKey(name: 'category_ids') List<int>? categoryIds,
    @JsonKey(name: 'product_ids') List<int>? productIds,
    String? search,
    @JsonKey(name: 'sort_by') String? sortBy,
  }) = _FilterProductDto;

  factory FilterProductDto.fromJson(Map<String, dynamic> json) =>
      _$FilterProductDtoFromJson(json);
}
