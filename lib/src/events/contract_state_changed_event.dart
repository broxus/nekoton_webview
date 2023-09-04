import 'package:json_annotation/json_annotation.dart';
import 'package:nekoton_webview/src/models/models.dart';

part 'contract_state_changed_event.g.dart';

@JsonSerializable()
class ContractStateChangedEvent {
  const ContractStateChangedEvent(this.address, this.state);

  ///Contract address
  final String address;

  ///New contract state
  final ContractState state;

  factory ContractStateChangedEvent.fromJson(Map<String, dynamic> json) =>
      _$ContractStateChangedEventFromJson(json);

  Map<String, dynamic> toJson() => _$ContractStateChangedEventToJson(this);
}
