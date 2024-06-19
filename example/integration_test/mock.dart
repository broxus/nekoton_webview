import 'dart:async';
import 'package:nekoton_webview/nekoton_webview.dart';

typedef Handler = void Function(String method, dynamic params);

class MockProviderApi extends ProviderApi {
  MockProviderApi(this.handler);

  Handler handler;

  @override
  Future<GetProviderStateOutput> getProviderState() {
    throw UnimplementedError();
  }

  @override
  Future<PermissionsPartial> requestPermissions(
    RequestPermissionsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<AddAssetOutput> addAsset(AddAssetInput input) {
    throw UnimplementedError();
  }

  @override
  Future<PermissionsPartial> changeAccount() {
    throw UnimplementedError();
  }

  @override
  Future<CodeToTvcOutput> codeToTvc(CodeToTvcInput input) {
    throw UnimplementedError();
  }

  @override
  Future<DecodeEventOutput?> decodeEvent(DecodeEventInput input) {
    throw UnimplementedError();
  }

  @override
  Future<DecodeInputOutput?> decodeInput(DecodeInputInput input) {
    throw UnimplementedError();
  }

  @override
  Future<DecodeOutputOutput?> decodeOutput(DecodeOutputInput input) {
    throw UnimplementedError();
  }

  @override
  Future<DecodeTransactionOutput?> decodeTransaction(
    DecodeTransactionInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<DecodeTransactionEventsOutput> decodeTransactionEvents(
    DecodeTransactionEventsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<DecryptDataOutput> decryptData(DecryptDataInput input) {
    throw UnimplementedError();
  }

  @override
  Future<void> disconnect() {
    throw UnimplementedError();
  }

  @override
  Future<EncodeInternalInputOutput> encodeInternalInput(FunctionCall input) {
    throw UnimplementedError();
  }

  @override
  Future<EncryptDataOutput> encryptData(EncryptDataInput input) {
    throw UnimplementedError();
  }

  @override
  Future<EstimateFeesOutput> estimateFees(EstimateFeesInput input) {
    throw UnimplementedError();
  }

  @override
  Future<ExecuteLocalOutput> executeLocal(ExecuteLocalInput input) {
    throw UnimplementedError();
  }

  @override
  Future<ExtractPublicKeyOutput> extractPublicKey(
    ExtractPublicKeyInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<FindTransactionOutput> findTransaction(FindTransactionInput input) {
    throw UnimplementedError();
  }

  @override
  Future<GetAccountsByCodeHashOutput> getAccountsByCodeHash(
    GetAccountsByCodeHashInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<GetBocHashOutput> getBocHash(GetBocHashInput input) {
    throw UnimplementedError();
  }

  @override
  Future<GetCodeSaltOutput> getCodeSalt(GetCodeSaltInput input) {
    throw UnimplementedError();
  }

  @override
  Future<GetContractFieldsOutput> getContractFields(
    GetContractFieldsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<GetExpectedAddressOutput> getExpectedAddress(
    GetExpectedAddressInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<GetFullContractStateOutput> getFullContractState(
    GetFullContractStateInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<GetTransactionOutput> getTransaction(GetTransactionInput input) {
    throw UnimplementedError();
  }

  @override
  Future<GetTransactionsOutput> getTransactions(GetTransactionsInput input) {
    throw UnimplementedError();
  }

  @override
  Future<MergeTvcOutput> mergeTvc(MergeTvcInput input) {
    throw UnimplementedError();
  }

  @override
  Future<PackIntoCellOutput> packIntoCell(PackIntoCellInput input) {
    throw UnimplementedError();
  }

  @override
  Future<RunLocalOutput> runLocal(RunLocalInput input) {
    throw UnimplementedError();
  }

  @override
  Future<SendExternalMessageOutput> sendExternalMessage(
    SendExternalMessageInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<SendExternalMessageDelayedOutput> sendExternalMessageDelayed(
    SendExternalMessageDelayedInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<SendMessageOutput> sendMessage(SendMessageInput input) {
    throw UnimplementedError();
  }

  @override
  Future<SendMessageDelayedOutput> sendMessageDelayed(
    SendMessageDelayedInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<SendUnsignedExternalMessageOutput> sendUnsignedExternalMessage(
    SendUnsignedExternalMessageInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<SetCodeSaltOutput> setCodeSalt(SetCodeSaltInput input) {
    throw UnimplementedError();
  }

  @override
  Future<SignDataOutput> signData(SignDataInput input) {
    throw UnimplementedError();
  }

  @override
  Future<SignDataRawOutput> signDataRaw(SignDataRawInput input) {
    throw UnimplementedError();
  }

  @override
  Future<SplitTvcOutput> splitTvc(SplitTvcInput input) {
    throw UnimplementedError();
  }

  @override
  Future<ContractUpdatesSubscription> subscribe(SubscribeInput input) {
    throw UnimplementedError();
  }

  @override
  Future<UnpackFromCellOutput> unpackFromCell(UnpackFromCellInput input) {
    throw UnimplementedError();
  }

  @override
  Future<UnpackInitDataOutput> unpackInitData(UnpackInitDataInput input) {
    throw UnimplementedError();
  }

  @override
  Future<void> unsubscribe(UnsubscribeInput input) {
    throw UnimplementedError();
  }

  @override
  Future<void> unsubscribeAll() {
    throw UnimplementedError();
  }

  @override
  Future<VerifySignatureOutput> verifySignature(VerifySignatureInput input) {
    throw UnimplementedError();
  }

  @override
  dynamic call(String method, dynamic params) {
    return handler(method, params);
  }

  @override
  Future<AddNetworkOutput> addNetwork(AddNetworkInput input) {
    throw UnimplementedError();
  }

  @override
  Future<ChangeNetworkOutput> changeNetwork(ChangeNetworkInput input) {
    throw UnimplementedError();
  }

  @override
  Future<ComputeStorageFeeOutput> computeStorageFee(
    ComputeStorageFeeInput input,
  ) {
    throw UnimplementedError();
  }
}
