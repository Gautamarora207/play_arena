// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sports _$SportsFromJson(Map<String, dynamic> json) {
  return Sports(
    createOn: json['createOn'] as String,
    updatedOn: json['updatedOn'] as String,
    id: json['id'] as int,
    name: json['name'] as String,
    iconBlackUrl: json['iconBlackUrl'] as String,
    iconWhiteUrl: json['iconWhiteUrl'] as String,
  );
}

Map<String, dynamic> _$SportsToJson(Sports instance) => <String, dynamic>{
      'createOn': instance.createOn,
      'updatedOn': instance.updatedOn,
      'id': instance.id,
      'name': instance.name,
      'iconWhiteUrl': instance.iconWhiteUrl,
      'iconBlackUrl': instance.iconBlackUrl,
    };
