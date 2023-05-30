import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  const Message(this.hash, this.src, this.dst, this.value, this.bounce,
      this.bounced, this.body, this.bodyHash);

  final String hash;
  final String? src;
  final String? dst;
  final String value;
  final bool bounce;
  final bool bounced;
  final String? body;
  final String? bodyHash;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
