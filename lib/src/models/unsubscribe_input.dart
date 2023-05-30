import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'unsubscribe_input.g.dart';

@JsonSerializable()
class UnsubscribeInput {
  const UnsubscribeInput(this.address);

  ///Contract address
  final String address;

  factory UnsubscribeInput.fromJson(Map<String, dynamic> json) =>
      _$UnsubscribeInputFromJson(json);

  Map<String, dynamic> toJson() => _$UnsubscribeInputToJson(this);
}
