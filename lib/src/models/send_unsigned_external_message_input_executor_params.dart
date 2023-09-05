import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'send_unsigned_external_message_input_executor_params.g.dart';

@JsonSerializable()
class SendUnsignedExternalMessageInputExecutorParams {
  const SendUnsignedExternalMessageInputExecutorParams(
      this.disableSignatureCheck, this.overrideBalance);

  ///If `true`, signature verification always succeds
  final bool? disableSignatureCheck;

  ///Explicit account balance in nano EVER
  final Object? overrideBalance;

  factory SendUnsignedExternalMessageInputExecutorParams.fromJson(
          Map<String, dynamic> json) =>
      _$SendUnsignedExternalMessageInputExecutorParamsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SendUnsignedExternalMessageInputExecutorParamsToJson(this);
}
