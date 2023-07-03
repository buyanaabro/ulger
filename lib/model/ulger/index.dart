import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

@JsonSerializable()
class UlgerModel {
  int id;
  int? views, images, age, script;
  String title, about, category, coverURL, createdBy, duration;
  bool? isSuper;

  UlgerModel(
      {required this.id,
      required this.title,
      required this.about,
      required this.category,
      required this.coverURL,
      required this.createdBy,
      required this.duration,
      this.views,
      this.images,
      this.age,
      this.script,
      this.isSuper});

  factory UlgerModel.fromJson(Map<String, dynamic> json) =>
      _$UlgerModelFromJson(json);
  Map<String, dynamic> toJson() => _$UlgerModelToJson(this);
}
