import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'logged_out_event.g.dart';

@JsonSerializable()
class LoggedOutEvent {
  const LoggedOutEvent();

  factory LoggedOutEvent.fromJson(Map<String, dynamic> json) =>
      _$LoggedOutEventFromJson(json);

  Map<String, dynamic> toJson() => _$LoggedOutEventToJson(this);
}
