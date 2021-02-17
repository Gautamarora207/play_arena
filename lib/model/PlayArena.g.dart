// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlayArena.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayArena _$PlayArenaFromJson(Map<String, dynamic> json) {
  return PlayArena(
    createOn: json['createOn'] as String,
    updatedOn: json['updatedOn'] as String,
    id: json['id'] as int,
    name: json['name'] as String,
    images: json['images'] as List,
    dayOfWeeksOpen: json['dayOfWeeksOpen'] as List,
    openTime: json['openTime'] as String,
    closeTime: json['closeTime'] as String,
    costPerSlot: (json['costPerSlot'] as num)?.toDouble(),
    slotTimeSize: json['slotTimeSize'] as int,
    establishment: json['establishment'] as String,
    sports: json['sports'] == null
        ? null
        : Sports.fromJson(json['sports'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlayArenaToJson(PlayArena instance) => <String, dynamic>{
      'createOn': instance.createOn,
      'updatedOn': instance.updatedOn,
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'dayOfWeeksOpen': instance.dayOfWeeksOpen,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'slotTimeSize': instance.slotTimeSize,
      'costPerSlot': instance.costPerSlot,
      'establishment': instance.establishment,
      'sports': instance.sports,
    };
