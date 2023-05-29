import 'package:json_annotation/json_annotation.dart';
import 'models.dart';

part 'send_external_message_input_executor_params.g.dart';

@JsonSerializable()
class SendExternalMessageInputExecutorParams {
  const SendExternalMessageInputExecutorParams(
      this.disableSignatureCheck, this.overrideBalance);

  ///If `true`, signature verification always succeds
  final bool? disableSignatureCheck;

  ///Explicit account balance in nano EVER
  final Object? overrideBalance;

  factory SendExternalMessageInputExecutorParams.fromJson(
          Map<String, dynamic> json) =>
      _$SendExternalMessageInputExecutorParamsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendExternalMessageInputExecutorParamsToJson(this);
}
