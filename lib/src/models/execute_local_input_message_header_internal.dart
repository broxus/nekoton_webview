import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'execute_local_input_message_header_internal.g.dart';

@JsonSerializable()
class ExecuteLocalInputMessageHeaderInternal {
  const ExecuteLocalInputMessageHeaderInternal(
      this.type, this.sender, this.amount, this.bounce, this.bounced);

  ///Internal message header
  final String type;

  ///Message source address
  final String sender;

  @JsonKey(
    fromJson: BigInt.tryParse,
    toJson: _bigIntToString,
  )
  final BigInt? amount;

  ///Whether to bounce message back on error
  final bool bounce;

  ///Whether the constructed message is bounced. Default: false
  final bool? bounced;

  factory ExecuteLocalInputMessageHeaderInternal.fromJson(
          Map<String, dynamic> json) =>
      _$ExecuteLocalInputMessageHeaderInternalFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ExecuteLocalInputMessageHeaderInternalToJson(this);

  static String? _bigIntToString(BigInt? value) => value?.toString();
}
