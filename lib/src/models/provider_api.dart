import 'dart:async';
import 'models.dart';

abstract class ProviderApi {
  ///Requests new permissions for current origin.
  ///Shows an approval window to the user.
  ///Will overwrite already existing permissions
  ///---
  ///Required permissions: none
  FutureOr<PermissionsPartial> requestPermissions(
      RequestPermissionsInput input);

  ///Updates `accountInteraction` permission value
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<PermissionsPartial> changeAccount();

  ///Removes all permissions for current origin and stops all subscriptions
  ///---
  ///Required permissions: none
  FutureOr<void> disconnect();

  ///Subscribes to contract updates.
  ///Can also be used to update subscriptions
  ///---
  ///Required permissions: `basic`
  FutureOr<ContractUpdatesSubscription> subscribe(SubscribeInput input);

  ///Fully unsubscribe from specific contract updates
  ///---
  ///Required permissions: none
  FutureOr<void> unsubscribe(UnsubscribeInput input);

  ///Fully unsubscribe from all contracts
  ///---
  ///Required permissions: none
  FutureOr<void> unsubscribeAll();

  ///Returns provider api state
  ///---
  ///Required permissions: none
  FutureOr<GetProviderStateOutput> getProviderState();

  ///Requests contract data
  ///---
  ///Required permissions: `basic`
  FutureOr<GetFullContractStateOutput> getFullContractState(
      GetFullContractStateInput input);

  ///Requests accounts with specified code hash
  ///---
  ///Required permissions: `basic`
  FutureOr<GetAccountsByCodeHashOutput> getAccountsByCodeHash(
      GetAccountsByCodeHashInput input);

  ///Requests contract transactions
  ///---
  ///Required permissions: `basic`
  FutureOr<GetTransactionsOutput> getTransactions(GetTransactionsInput input);

  ///Fetches transaction by the exact hash
  ///---
  ///Required permissions: `basic`
  FutureOr<GetTransactionOutput> getTransaction(GetTransactionInput input);

  ///Searches transaction by filters
  ///NOTE: at least one filter must be specified
  ///---
  ///Required permissions: `basic`
  FutureOr<FindTransactionOutput> findTransaction(FindTransactionInput input);

  ///Executes only a compute phase locally
  ///---
  ///Required permissions: `basic`
  FutureOr<RunLocalOutput> runLocal(RunLocalInput input);

  ///Executes all transaction phases locally, producing a new state
  ///---
  ///Required permissions: `basic`
  FutureOr<ExecuteLocalOutput> executeLocal(ExecuteLocalInput input);

  ///Calculates contract address from code and init params
  ///---
  ///Required permissions: `basic`
  FutureOr<GetExpectedAddressOutput> getExpectedAddress(
      GetExpectedAddressInput input);

  ///Unpacks all fields from the contract state using the specified ABI
  ///---
  ///Required permissions: `basic`
  FutureOr<GetContractFieldsOutput> getContractFields(
      GetContractFieldsInput input);

  ///Decodes initial contract data using the specified ABI
  ///---
  ///Required permissions: `basic`
  FutureOr<UnpackInitDataOutput> unpackInitData(UnpackInitDataInput input);

  ///Computes hash of base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  FutureOr<GetBocHashOutput> getBocHash(GetBocHashInput input);

  ///Creates base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  FutureOr<PackIntoCellOutput> packIntoCell(PackIntoCellInput input);

  ///Decodes base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  FutureOr<UnpackFromCellOutput> unpackFromCell(UnpackFromCellInput input);

  ///Extracts public key from raw account state
  ///**NOTE:** can only be used on contracts which are deployed and has `pubkey` header
  ///---
  ///Required permissions: `basic`
  FutureOr<ExtractPublicKeyOutput> extractPublicKey(
      ExtractPublicKeyInput input);

  ///Converts base64 encoded contract code into tvc with default init data
  ///---
  ///Required permissions: `basic`
  FutureOr<CodeToTvcOutput> codeToTvc(CodeToTvcInput input);

  ///Merges base64 encoded contract code and state into a tvc
  ///---
  ///Required permissions: `basic`
  FutureOr<MergeTvcOutput> mergeTvc(MergeTvcInput input);

  ///Splits base64 encoded state init into code and data
  ///---
  ///Required permissions: `basic`
  FutureOr<SplitTvcOutput> splitTvc(SplitTvcInput input);

  ///Inserts salt into code
  ///---
  ///Required permissions: `basic`
  FutureOr<SetCodeSaltOutput> setCodeSalt(SetCodeSaltInput input);

  ///Retrieves salt from code. Returns undefined if code doesn't contain salt
  ///---
  ///Required permissions: `basic`
  FutureOr<GetCodeSaltOutput> getCodeSalt(GetCodeSaltInput input);

  ///Creates internal message body
  ///---
  ///Required permissions: `basic`
  FutureOr<EncodeInternalInputOutput> encodeInternalInput(FunctionCall input);

  ///Decodes body of incoming message
  ///---
  ///Required permissions: `basic`
  FutureOr<DecodeInputOutput?> decodeInput(DecodeInputInput input);

  ///Decodes body of outgoing message
  ///---
  ///Required permissions: `basic`
  FutureOr<DecodeOutputOutput?> decodeOutput(DecodeOutputInput input);

  ///Decodes body of event message
  ///---
  ///Required permissions: `basic`
  FutureOr<DecodeEventOutput?> decodeEvent(DecodeEventInput input);

  ///Decodes function call
  ///---
  ///Required permissions: `basic`
  FutureOr<DecodeTransactionOutput?> decodeTransaction(
      DecodeTransactionInput input);

  ///Decodes transaction events
  ///---
  ///Required permissions: `basic`
  FutureOr<DecodeTransactionEventsOutput> decodeTransactionEvents(
      DecodeTransactionEventsInput input);

  ///Checks if a specific data hash was signed with the specified key
  ///---
  ///Requires permissions: `basic`
  FutureOr<VerifySignatureOutput> verifySignature(VerifySignatureInput input);

  ///Sends an unsigned external message to the contract
  ///---
  ///Required permissions: `basic`
  FutureOr<SendUnsignedExternalMessageOutput> sendUnsignedExternalMessage(
      SendUnsignedExternalMessageInput input);

  ///Adds asset to the selected account
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<AddAssetOutput> addAsset(AddAssetInput input);

  ///Signs arbitrary data.
  ///NOTE: hashes data before signing. Use `signDataRaw` to sign without hash.
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<SignDataOutput> signData(SignDataInput input);

  ///Signs arbitrary data without hashing it
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<SignDataRawOutput> signDataRaw(SignDataRawInput input);

  ///Encrypts arbitrary data with specified algorithm for each specified recipient
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<EncryptDataOutput> encryptData(EncryptDataInput input);

  ///Decrypts encrypted data
  ///---
  ///Requires permissions: `accountInteraction`
  FutureOr<DecryptDataOutput> decryptData(DecryptDataInput input);

  ///Calculates transaction fees
  ///---
  ///Required permissions: `accountInteraction`
  FutureOr<EstimateFeesOutput> estimateFees(EstimateFeesInput input);

  ///Sends an internal message from the user account.
  ///Shows an approval window to the user.
  ///---
  ///Required permissions: `accountInteraction`
  FutureOr<SendMessageOutput> sendMessage(SendMessageInput input);

  ///Sends an internal message from the user account without waiting for the transaction.
  ///Shows an approval window to the user.
  FutureOr<SendMessageDelayedOutput> sendMessageDelayed(
      SendMessageDelayedInput input);

  ///Sends an external message to the contract
  ///Shows and approval window to the user
  ///---
  ///Required permissions: `accountInteraction`
  FutureOr<SendExternalMessageOutput> sendExternalMessage(
      SendExternalMessageInput input);

  ///Sends an external message to the contract without waiting for the transaction.
  ///Shows and approval window to the user
  FutureOr<SendExternalMessageDelayedOutput> sendExternalMessageDelayed(
      SendExternalMessageDelayedInput input);

  dynamic call(String method, dynamic params) {
    switch (method) {
      case 'requestPermissions':
        return requestPermissions(RequestPermissionsInput.fromJson(params));
      case 'changeAccount':
        return changeAccount();
      case 'disconnect':
        return disconnect();
      case 'subscribe':
        return subscribe(SubscribeInput.fromJson(params));
      case 'unsubscribe':
        return unsubscribe(UnsubscribeInput.fromJson(params));
      case 'unsubscribeAll':
        return unsubscribeAll();
      case 'getProviderState':
        return getProviderState();
      case 'getFullContractState':
        return getFullContractState(GetFullContractStateInput.fromJson(params));
      case 'getAccountsByCodeHash':
        return getAccountsByCodeHash(
            GetAccountsByCodeHashInput.fromJson(params));
      case 'getTransactions':
        return getTransactions(GetTransactionsInput.fromJson(params));
      case 'getTransaction':
        return getTransaction(GetTransactionInput.fromJson(params));
      case 'findTransaction':
        return findTransaction(FindTransactionInput.fromJson(params));
      case 'runLocal':
        return runLocal(RunLocalInput.fromJson(params));
      case 'executeLocal':
        return executeLocal(ExecuteLocalInput.fromJson(params));
      case 'getExpectedAddress':
        return getExpectedAddress(GetExpectedAddressInput.fromJson(params));
      case 'getContractFields':
        return getContractFields(GetContractFieldsInput.fromJson(params));
      case 'unpackInitData':
        return unpackInitData(UnpackInitDataInput.fromJson(params));
      case 'getBocHash':
        return getBocHash(GetBocHashInput.fromJson(params));
      case 'packIntoCell':
        return packIntoCell(PackIntoCellInput.fromJson(params));
      case 'unpackFromCell':
        return unpackFromCell(UnpackFromCellInput.fromJson(params));
      case 'extractPublicKey':
        return extractPublicKey(ExtractPublicKeyInput.fromJson(params));
      case 'codeToTvc':
        return codeToTvc(CodeToTvcInput.fromJson(params));
      case 'mergeTvc':
        return mergeTvc(MergeTvcInput.fromJson(params));
      case 'splitTvc':
        return splitTvc(SplitTvcInput.fromJson(params));
      case 'setCodeSalt':
        return setCodeSalt(SetCodeSaltInput.fromJson(params));
      case 'getCodeSalt':
        return getCodeSalt(GetCodeSaltInput.fromJson(params));
      case 'encodeInternalInput':
        return encodeInternalInput(FunctionCall.fromJson(params));
      case 'decodeInput':
        return decodeInput(DecodeInputInput.fromJson(params));
      case 'decodeOutput':
        return decodeOutput(DecodeOutputInput.fromJson(params));
      case 'decodeEvent':
        return decodeEvent(DecodeEventInput.fromJson(params));
      case 'decodeTransaction':
        return decodeTransaction(DecodeTransactionInput.fromJson(params));
      case 'decodeTransactionEvents':
        return decodeTransactionEvents(
            DecodeTransactionEventsInput.fromJson(params));
      case 'verifySignature':
        return verifySignature(VerifySignatureInput.fromJson(params));
      case 'sendUnsignedExternalMessage':
        return sendUnsignedExternalMessage(
            SendUnsignedExternalMessageInput.fromJson(params));
      case 'addAsset':
        return addAsset(AddAssetInput.fromJson(params));
      case 'signData':
        return signData(SignDataInput.fromJson(params));
      case 'signDataRaw':
        return signDataRaw(SignDataRawInput.fromJson(params));
      case 'encryptData':
        return encryptData(EncryptDataInput.fromJson(params));
      case 'decryptData':
        return decryptData(DecryptDataInput.fromJson(params));
      case 'estimateFees':
        return estimateFees(EstimateFeesInput.fromJson(params));
      case 'sendMessage':
        return sendMessage(SendMessageInput.fromJson(params));
      case 'sendMessageDelayed':
        return sendMessageDelayed(SendMessageDelayedInput.fromJson(params));
      case 'sendExternalMessage':
        return sendExternalMessage(SendExternalMessageInput.fromJson(params));
      case 'sendExternalMessageDelayed':
        return sendExternalMessageDelayed(
            SendExternalMessageDelayedInput.fromJson(params));

      default:
        throw NoSuchMethodError.withInvocation(
            this, Invocation.method(Symbol(method), [params]));
    }
  }
}
