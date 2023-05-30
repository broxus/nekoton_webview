import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_unsigned_external_message_output.g.dart';

@JsonSerializable()
class SendUnsignedExternalMessageOutput {
  const SendUnsignedExternalMessageOutput(this.transaction, this.output);

  ///Executed transaction
  final Transaction transaction;

  ///Parsed function call output
  final Map<String, Object?>? output;

  factory SendUnsignedExternalMessageOutput.fromJson(
          Map<String, dynamic> json) =>
      _$SendUnsignedExternalMessageOutputFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendUnsignedExternalMessageOutputToJson(this);
}
