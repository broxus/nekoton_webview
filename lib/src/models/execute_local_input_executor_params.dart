import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'execute_local_input_executor_params.g.dart';

@JsonSerializable()
class ExecuteLocalInputExecutorParams {
  const ExecuteLocalInputExecutorParams(
      this.disableSignatureCheck, this.overrideBalance);

  ///If `true`, signature verification always succeeds
  final bool? disableSignatureCheck;

  ///Explicit account balance in nano EVER
  final Object? overrideBalance;

  factory ExecuteLocalInputExecutorParams.fromJson(Map<String, dynamic> json) =>
      _$ExecuteLocalInputExecutorParamsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ExecuteLocalInputExecutorParamsToJson(this);
}
