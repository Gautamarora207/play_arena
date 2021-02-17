import 'package:json_annotation/json_annotation.dart';
part 'Sports.g.dart';

@JsonSerializable()
class Sports {
  String createOn;
  String updatedOn;
  int id;
  String name;
  String iconWhiteUrl;
  String iconBlackUrl;

  Sports({
    this.createOn,
    this.updatedOn,
    this.id,
    this.name,
    this.iconBlackUrl,
    this.iconWhiteUrl,
  });

  factory Sports.fromJson(Map<String, dynamic> json) => _$SportsFromJson(json);
  Map<String, dynamic> toJson() => _$SportsToJson(this);
}
