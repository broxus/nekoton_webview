import 'dart:async';
import 'package:nekoton_webview/nekoton_webview.dart';

const address =
    '0:727a540fb41fba5767e8fb5aaf0c9b9b0c9aa4ff8d534c45e5ba68742dacc134';
const publicKey =
    '9599d7a809bd0787b2dd995df6408bb0c25ea4c1cb9a26d83d68639797abb5e3';

class MockProviderApi extends ProviderApi {
  @override
  FutureOr<GetProviderStateOutput> getProviderState() {
    return GetProviderStateOutput.fromJson({
      'version': '0.3.0',
      'numericVersion': 3000,
      'networkId': 1,
      'selectedConnection': 'mainnet',
      'supportedPermissions': ['basic', 'accountInteraction'],
      'subscriptions': <String, Object>{},
      'permissions': <String, Object>{},
    });
  }

  @override
  FutureOr<PermissionsPartial> requestPermissions(
    RequestPermissionsInput input,
  ) {
    return PermissionsPartial.fromJson({
      'basic': true,
      'accountInteraction': {
        'address': address,
        'publicKey': publicKey,
        'contractType': 'EverWallet',
      },
    });
  }

  @override
  FutureOr<AddAssetOutput> addAsset(AddAssetInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<PermissionsPartial> changeAccount() {
    throw UnimplementedError();
  }

  @override
  FutureOr<CodeToTvcOutput> codeToTvc(CodeToTvcInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecodeEventOutput?> decodeEvent(DecodeEventInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecodeInputOutput?> decodeInput(DecodeInputInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecodeOutputOutput?> decodeOutput(DecodeOutputInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecodeTransactionOutput?> decodeTransaction(
    DecodeTransactionInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecodeTransactionEventsOutput> decodeTransactionEvents(
    DecodeTransactionEventsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<DecryptDataOutput> decryptData(DecryptDataInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> disconnect() {
    throw UnimplementedError();
  }

  @override
  FutureOr<EncodeInternalInputOutput> encodeInternalInput(FunctionCall input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<EncryptDataOutput> encryptData(EncryptDataInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<EstimateFeesOutput> estimateFees(EstimateFeesInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<ExecuteLocalOutput> executeLocal(ExecuteLocalInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<ExtractPublicKeyOutput> extractPublicKey(
    ExtractPublicKeyInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<FindTransactionOutput> findTransaction(FindTransactionInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetAccountsByCodeHashOutput> getAccountsByCodeHash(
    GetAccountsByCodeHashInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetBocHashOutput> getBocHash(GetBocHashInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetCodeSaltOutput> getCodeSalt(GetCodeSaltInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetContractFieldsOutput> getContractFields(
    GetContractFieldsInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetExpectedAddressOutput> getExpectedAddress(
    GetExpectedAddressInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetFullContractStateOutput> getFullContractState(
    GetFullContractStateInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetTransactionOutput> getTransaction(GetTransactionInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<GetTransactionsOutput> getTransactions(GetTransactionsInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<MergeTvcOutput> mergeTvc(MergeTvcInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<PackIntoCellOutput> packIntoCell(PackIntoCellInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<RunLocalOutput> runLocal(RunLocalInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SendExternalMessageOutput> sendExternalMessage(
    SendExternalMessageInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SendExternalMessageDelayedOutput> sendExternalMessageDelayed(
    SendExternalMessageDelayedInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SendMessageOutput> sendMessage(SendMessageInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SendMessageDelayedOutput> sendMessageDelayed(
    SendMessageDelayedInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SendUnsignedExternalMessageOutput> sendUnsignedExternalMessage(
    SendUnsignedExternalMessageInput input,
  ) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SetCodeSaltOutput> setCodeSalt(SetCodeSaltInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SignDataOutput> signData(SignDataInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SignDataRawOutput> signDataRaw(SignDataRawInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<SplitTvcOutput> splitTvc(SplitTvcInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<ContractUpdatesSubscription> subscribe(SubscribeInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<UnpackFromCellOutput> unpackFromCell(UnpackFromCellInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<UnpackInitDataOutput> unpackInitData(UnpackInitDataInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> unsubscribe(UnsubscribeInput input) {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> unsubscribeAll() {
    throw UnimplementedError();
  }

  @override
  FutureOr<VerifySignatureOutput> verifySignature(VerifySignatureInput input) {
    throw UnimplementedError();
  }
}
