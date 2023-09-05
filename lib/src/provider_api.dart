import 'dart:async';
import 'package:nekoton_webview/src/models/models.dart';

abstract class ProviderApi {
  ///Requests new permissions for current origin.
  ///Shows an approval window to the user.
  ///Will overwrite already existing permissions
  ///---
  ///Required permissions: none
  Future<PermissionsPartial> requestPermissions(
    RequestPermissionsInput input,
  );

  ///Updates `accountInteraction` permission value
  ///---
  ///Requires permissions: `accountInteraction`
  Future<PermissionsPartial> changeAccount();

  ///Removes all permissions for current origin and stops all subscriptions
  ///---
  ///Required permissions: none
  Future<void> disconnect();

  ///Subscribes to contract updates.
  ///Can also be used to update subscriptions
  ///---
  ///Required permissions: `basic`
  Future<ContractUpdatesSubscription> subscribe(
    SubscribeInput input,
  );

  ///Fully unsubscribe from specific contract updates
  ///---
  ///Required permissions: none
  Future<void> unsubscribe(
    UnsubscribeInput input,
  );

  ///Fully unsubscribe from all contracts
  ///---
  ///Required permissions: none
  Future<void> unsubscribeAll();

  ///Returns provider api state
  ///---
  ///Required permissions: none
  Future<GetProviderStateOutput> getProviderState();

  ///Requests contract data
  ///---
  ///Required permissions: `basic`
  Future<GetFullContractStateOutput> getFullContractState(
    GetFullContractStateInput input,
  );

  ///Requests accounts with specified code hash
  ///---
  ///Required permissions: `basic`
  Future<GetAccountsByCodeHashOutput> getAccountsByCodeHash(
    GetAccountsByCodeHashInput input,
  );

  ///Requests contract transactions
  ///---
  ///Required permissions: `basic`
  Future<GetTransactionsOutput> getTransactions(
    GetTransactionsInput input,
  );

  ///Fetches transaction by the exact hash
  ///---
  ///Required permissions: `basic`
  Future<GetTransactionOutput> getTransaction(
    GetTransactionInput input,
  );

  ///Searches transaction by filters
  ///NOTE: at least one filter must be specified
  ///---
  ///Required permissions: `basic`
  Future<FindTransactionOutput> findTransaction(
    FindTransactionInput input,
  );

  ///Executes only a compute phase locally
  ///---
  ///Required permissions: `basic`
  Future<RunLocalOutput> runLocal(
    RunLocalInput input,
  );

  ///Executes all transaction phases locally, producing a new state
  ///---
  ///Required permissions: `basic`
  Future<ExecuteLocalOutput> executeLocal(
    ExecuteLocalInput input,
  );

  ///Calculates contract address from code and init params
  ///---
  ///Required permissions: `basic`
  Future<GetExpectedAddressOutput> getExpectedAddress(
    GetExpectedAddressInput input,
  );

  ///Unpacks all fields from the contract state using the specified ABI
  ///---
  ///Required permissions: `basic`
  Future<GetContractFieldsOutput> getContractFields(
    GetContractFieldsInput input,
  );

  ///Decodes initial contract data using the specified ABI
  ///---
  ///Required permissions: `basic`
  Future<UnpackInitDataOutput> unpackInitData(
    UnpackInitDataInput input,
  );

  ///Computes hash of base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  Future<GetBocHashOutput> getBocHash(
    GetBocHashInput input,
  );

  ///Creates base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  Future<PackIntoCellOutput> packIntoCell(
    PackIntoCellInput input,
  );

  ///Decodes base64 encoded BOC
  ///---
  ///Required permissions: `basic`
  Future<UnpackFromCellOutput> unpackFromCell(
    UnpackFromCellInput input,
  );

  ///Extracts public key from raw account state
  ///**NOTE:** can only be used on contracts which are deployed and has `pubkey` header
  ///---
  ///Required permissions: `basic`
  Future<ExtractPublicKeyOutput> extractPublicKey(
    ExtractPublicKeyInput input,
  );

  ///Converts base64 encoded contract code into tvc with default init data
  ///---
  ///Required permissions: `basic`
  Future<CodeToTvcOutput> codeToTvc(
    CodeToTvcInput input,
  );

  ///Merges base64 encoded contract code and state into a tvc
  ///---
  ///Required permissions: `basic`
  Future<MergeTvcOutput> mergeTvc(
    MergeTvcInput input,
  );

  ///Splits base64 encoded state init into code and data
  ///---
  ///Required permissions: `basic`
  Future<SplitTvcOutput> splitTvc(
    SplitTvcInput input,
  );

  ///Inserts salt into code
  ///---
  ///Required permissions: `basic`
  Future<SetCodeSaltOutput> setCodeSalt(
    SetCodeSaltInput input,
  );

  ///Retrieves salt from code. Returns undefined if code doesn't contain salt
  ///---
  ///Required permissions: `basic`
  Future<GetCodeSaltOutput> getCodeSalt(
    GetCodeSaltInput input,
  );

  ///Creates internal message body
  ///---
  ///Required permissions: `basic`
  Future<EncodeInternalInputOutput> encodeInternalInput(
    FunctionCall input,
  );

  ///Decodes body of incoming message
  ///---
  ///Required permissions: `basic`
  Future<DecodeInputOutput?> decodeInput(
    DecodeInputInput input,
  );

  ///Decodes body of outgoing message
  ///---
  ///Required permissions: `basic`
  Future<DecodeOutputOutput?> decodeOutput(
    DecodeOutputInput input,
  );

  ///Decodes body of event message
  ///---
  ///Required permissions: `basic`
  Future<DecodeEventOutput?> decodeEvent(
    DecodeEventInput input,
  );

  ///Decodes function call
  ///---
  ///Required permissions: `basic`
  Future<DecodeTransactionOutput?> decodeTransaction(
    DecodeTransactionInput input,
  );

  ///Decodes transaction events
  ///---
  ///Required permissions: `basic`
  Future<DecodeTransactionEventsOutput> decodeTransactionEvents(
    DecodeTransactionEventsInput input,
  );

  ///Checks if a specific data hash was signed with the specified key
  ///---
  ///Requires permissions: `basic`
  Future<VerifySignatureOutput> verifySignature(
    VerifySignatureInput input,
  );

  ///Sends an unsigned external message to the contract
  ///---
  ///Required permissions: `basic`
  Future<SendUnsignedExternalMessageOutput> sendUnsignedExternalMessage(
    SendUnsignedExternalMessageInput input,
  );

  ///Adds asset to the selected account
  ///---
  ///Requires permissions: `accountInteraction`
  Future<AddAssetOutput> addAsset(
    AddAssetInput input,
  );

  ///Signs arbitrary data.
  ///NOTE: hashes data before signing. Use `signDataRaw` to sign without hash.
  ///---
  ///Requires permissions: `accountInteraction`
  Future<SignDataOutput> signData(
    SignDataInput input,
  );

  ///Signs arbitrary data without hashing it
  ///---
  ///Requires permissions: `accountInteraction`
  Future<SignDataRawOutput> signDataRaw(
    SignDataRawInput input,
  );

  ///Encrypts arbitrary data with specified algorithm for each specified recipient
  ///---
  ///Requires permissions: `accountInteraction`
  Future<EncryptDataOutput> encryptData(
    EncryptDataInput input,
  );

  ///Decrypts encrypted data
  ///---
  ///Requires permissions: `accountInteraction`
  Future<DecryptDataOutput> decryptData(
    DecryptDataInput input,
  );

  ///Calculates transaction fees
  ///---
  ///Required permissions: `accountInteraction`
  Future<EstimateFeesOutput> estimateFees(
    EstimateFeesInput input,
  );

  ///Sends an internal message from the user account.
  ///Shows an approval window to the user.
  ///---
  ///Required permissions: `accountInteraction`
  Future<SendMessageOutput> sendMessage(
    SendMessageInput input,
  );

  ///Sends an internal message from the user account without waiting for the transaction.
  ///Shows an approval window to the user.
  Future<SendMessageDelayedOutput> sendMessageDelayed(
    SendMessageDelayedInput input,
  );

  ///Sends an external message to the contract
  ///Shows and approval window to the user
  ///---
  ///Required permissions: `accountInteraction`
  Future<SendExternalMessageOutput> sendExternalMessage(
    SendExternalMessageInput input,
  );

  ///Sends an external message to the contract without waiting for the transaction.
  ///Shows and approval window to the user
  Future<SendExternalMessageDelayedOutput> sendExternalMessageDelayed(
    SendExternalMessageDelayedInput input,
  );

  dynamic call(String method, dynamic params) {
    switch (method) {
      case 'requestPermissions':
        return requestPermissions(
          RequestPermissionsInput.fromJson(params as Map<String, dynamic>),
        );
      case 'changeAccount':
        return changeAccount();
      case 'disconnect':
        return disconnect();
      case 'subscribe':
        return subscribe(
          SubscribeInput.fromJson(params as Map<String, dynamic>),
        );
      case 'unsubscribe':
        return unsubscribe(
          UnsubscribeInput.fromJson(params as Map<String, dynamic>),
        );
      case 'unsubscribeAll':
        return unsubscribeAll();
      case 'getProviderState':
        return getProviderState();
      case 'getFullContractState':
        return getFullContractState(
          GetFullContractStateInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getAccountsByCodeHash':
        return getAccountsByCodeHash(
          GetAccountsByCodeHashInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getTransactions':
        return getTransactions(
          GetTransactionsInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getTransaction':
        return getTransaction(
          GetTransactionInput.fromJson(params as Map<String, dynamic>),
        );
      case 'findTransaction':
        return findTransaction(
          FindTransactionInput.fromJson(params as Map<String, dynamic>),
        );
      case 'runLocal':
        return runLocal(
          RunLocalInput.fromJson(params as Map<String, dynamic>),
        );
      case 'executeLocal':
        return executeLocal(
          ExecuteLocalInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getExpectedAddress':
        return getExpectedAddress(
          GetExpectedAddressInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getContractFields':
        return getContractFields(
          GetContractFieldsInput.fromJson(params as Map<String, dynamic>),
        );
      case 'unpackInitData':
        return unpackInitData(
          UnpackInitDataInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getBocHash':
        return getBocHash(
          GetBocHashInput.fromJson(params as Map<String, dynamic>),
        );
      case 'packIntoCell':
        return packIntoCell(
          PackIntoCellInput.fromJson(params as Map<String, dynamic>),
        );
      case 'unpackFromCell':
        return unpackFromCell(
          UnpackFromCellInput.fromJson(params as Map<String, dynamic>),
        );
      case 'extractPublicKey':
        return extractPublicKey(
          ExtractPublicKeyInput.fromJson(params as Map<String, dynamic>),
        );
      case 'codeToTvc':
        return codeToTvc(
          CodeToTvcInput.fromJson(params as Map<String, dynamic>),
        );
      case 'mergeTvc':
        return mergeTvc(
          MergeTvcInput.fromJson(params as Map<String, dynamic>),
        );
      case 'splitTvc':
        return splitTvc(
          SplitTvcInput.fromJson(params as Map<String, dynamic>),
        );
      case 'setCodeSalt':
        return setCodeSalt(
          SetCodeSaltInput.fromJson(params as Map<String, dynamic>),
        );
      case 'getCodeSalt':
        return getCodeSalt(
          GetCodeSaltInput.fromJson(params as Map<String, dynamic>),
        );
      case 'encodeInternalInput':
        return encodeInternalInput(
          FunctionCall.fromJson(params as Map<String, dynamic>),
        );
      case 'decodeInput':
        return decodeInput(
          DecodeInputInput.fromJson(params as Map<String, dynamic>),
        );
      case 'decodeOutput':
        return decodeOutput(
          DecodeOutputInput.fromJson(params as Map<String, dynamic>),
        );
      case 'decodeEvent':
        return decodeEvent(
          DecodeEventInput.fromJson(params as Map<String, dynamic>),
        );
      case 'decodeTransaction':
        return decodeTransaction(
          DecodeTransactionInput.fromJson(params as Map<String, dynamic>),
        );
      case 'decodeTransactionEvents':
        return decodeTransactionEvents(
          DecodeTransactionEventsInput.fromJson(params as Map<String, dynamic>),
        );
      case 'verifySignature':
        return verifySignature(
          VerifySignatureInput.fromJson(params as Map<String, dynamic>),
        );
      case 'sendUnsignedExternalMessage':
        return sendUnsignedExternalMessage(
          SendUnsignedExternalMessageInput.fromJson(
              params as Map<String, dynamic>),
        );
      case 'addAsset':
        return addAsset(
          AddAssetInput.fromJson(params as Map<String, dynamic>),
        );
      case 'signData':
        return signData(
          SignDataInput.fromJson(params as Map<String, dynamic>),
        );
      case 'signDataRaw':
        return signDataRaw(
          SignDataRawInput.fromJson(params as Map<String, dynamic>),
        );
      case 'encryptData':
        return encryptData(
          EncryptDataInput.fromJson(params as Map<String, dynamic>),
        );
      case 'decryptData':
        return decryptData(
          DecryptDataInput.fromJson(params as Map<String, dynamic>),
        );
      case 'estimateFees':
        return estimateFees(
          EstimateFeesInput.fromJson(params as Map<String, dynamic>),
        );
      case 'sendMessage':
        return sendMessage(
          SendMessageInput.fromJson(params as Map<String, dynamic>),
        );
      case 'sendMessageDelayed':
        return sendMessageDelayed(
          SendMessageDelayedInput.fromJson(params as Map<String, dynamic>),
        );
      case 'sendExternalMessage':
        return sendExternalMessage(
          SendExternalMessageInput.fromJson(params as Map<String, dynamic>),
        );
      case 'sendExternalMessageDelayed':
        return sendExternalMessageDelayed(
          SendExternalMessageDelayedInput.fromJson(
              params as Map<String, dynamic>),
        );

      default:
        throw NoSuchMethodError.withInvocation(
            this, Invocation.method(Symbol(method), [params]));
    }
  }
}
