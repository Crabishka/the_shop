import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.g.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String picture,
    @JsonKey(name: 'parent_id') required int? parentId,
    required List<Category>? subcategories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
