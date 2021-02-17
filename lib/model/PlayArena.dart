import 'package:json_annotation/json_annotation.dart';
import 'Sports.dart';
part 'PlayArena.g.dart';

@JsonSerializable()
class PlayArena {
  String createOn;
  String updatedOn;
  int id;
  String name;
  List images;
  List dayOfWeeksOpen;
  String openTime;
  String closeTime;
  int slotTimeSize;
  double costPerSlot;
  String establishment;
  Sports sports;

  PlayArena(
      {this.createOn,
      this.updatedOn,
      this.id,
      this.name,
      this.images,
      this.dayOfWeeksOpen,
      this.openTime,
      this.closeTime,
      this.costPerSlot,
      this.slotTimeSize,
      this.establishment,
      this.sports});

  factory PlayArena.fromJson(Map<String, dynamic> json) =>
      _$PlayArenaFromJson(json);
  Map<String, dynamic> toJson() => _$PlayArenaToJson(this);
}
