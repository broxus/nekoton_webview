import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'execute_local_input_message_header_external.g.dart';

@JsonSerializable()
class ExecuteLocalInputMessageHeaderExternal {
  const ExecuteLocalInputMessageHeaderExternal(
      this.type, this.publicKey, this.withoutSignature);

  ///External message header
  final String type;

  ///The public key of the signer.
  final String publicKey;

  ///Whether to prepare this message without signature. Default: false
  final bool? withoutSignature;

  factory ExecuteLocalInputMessageHeaderExternal.fromJson(
          Map<String, dynamic> json) =>
      _$ExecuteLocalInputMessageHeaderExternalFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ExecuteLocalInputMessageHeaderExternalToJson(this);
}
