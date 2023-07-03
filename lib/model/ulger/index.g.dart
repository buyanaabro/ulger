// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UlgerModel _$UlgerModelFromJson(Map<String, dynamic> json) => UlgerModel(
      id: json['id'] as int,
      title: json['title'] as String,
      about: json['about'] as String,
      category: json['category'] as String,
      coverURL: json['coverURL'] as String,
      createdBy: json['createdBy'] as String,
      duration: json['duration'] as String,
      views: json['views'] as int?,
      images: json['images'] as int?,
      age: json['age'] as int?,
      script: json['script'] as int?,
      isSuper: json['isSuper'] as bool?,
    );

Map<String, dynamic> _$UlgerModelToJson(UlgerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'views': instance.views,
      'images': instance.images,
      'age': instance.age,
      'script': instance.script,
      'title': instance.title,
      'about': instance.about,
      'category': instance.category,
      'coverURL': instance.coverURL,
      'createdBy': instance.createdBy,
      'duration': instance.duration,
      'isSuper': instance.isSuper,
    };
