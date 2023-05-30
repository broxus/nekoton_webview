import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_unsigned_external_message_input.g.dart';

@JsonSerializable()
class SendUnsignedExternalMessageInput {
  const SendUnsignedExternalMessageInput(this.recipient, this.stateInit,
      this.payload, this.local, this.executorParams);

  ///Message destination address
  final String recipient;

  ///Optional base64 encoded `.tvc` file
  final String? stateInit;

  ///Function call
  final Object? payload;

  ///Whether to only run it locally (false by default)
  ///Can be used as alternative `runLocal` method
  final bool? local;

  ///Optional executor parameters used during local contract execution
  final SendUnsignedExternalMessageInputExecutorParams? executorParams;

  factory SendUnsignedExternalMessageInput.fromJson(
          Map<String, dynamic> json) =>
      _$SendUnsignedExternalMessageInputFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendUnsignedExternalMessageInputToJson(this);
}
