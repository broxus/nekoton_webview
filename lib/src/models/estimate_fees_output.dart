import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'estimate_fees_output.g.dart';

@JsonSerializable()
class EstimateFeesOutput {
  const EstimateFeesOutput(this.fees);

  ///Fees in nano EVER
  final String fees;

  factory EstimateFeesOutput.fromJson(Map<String, dynamic> json) =>
      _$EstimateFeesOutputFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateFeesOutputToJson(this);
}
