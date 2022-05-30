# WalletAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**derivePrivateKey**](WalletAPI.md#deriveprivatekey) | **POST** /{blockchain}/wallet/private_key | Derive private key
[**deriveWalletIdentifier**](WalletAPI.md#derivewalletidentifier) | **POST** /{blockchain}/wallet/identifier | Derive wallet identifier
[**generatePrivateKey**](WalletAPI.md#generateprivatekey) | **POST** /{blockchain}/wallet/generate/private_key | Generate private key
[**generateSeedPhrase**](WalletAPI.md#generateseedphrase) | **POST** /{blockchain}/wallet/generate/secret_recovery_phrase | Generate seed phrase
[**getAirdrop**](WalletAPI.md#getairdrop) | **POST** /{blockchain}/wallet/airdrop | Get an airdrop
[**getBalance**](WalletAPI.md#getbalance) | **POST** /{blockchain}/wallet/balance | Get wallet&#39;s balance of X
[**transfer**](WalletAPI.md#transfer) | **POST** /{blockchain}/wallet/transfer | Transfer crypto, a token, or an NFT to another wallet


# **derivePrivateKey**
```swift
    open class func derivePrivateKey(blockchain: Blockchain_derivePrivateKey, supplyWalletRequest: SupplyWalletRequest, completion: @escaping (_ data: GeneralGeneratePrivateKeyResponse?, _ error: Error?) -> Void)
```

Derive private key

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely derive a private key for a wallet.   For example, if you have a seed phrase and want to derive the corresponding private key, use this endpoint.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let supplyWalletRequest = SupplyWalletRequest(wallet: GeneralWallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", hexPrivateKey: "hexPrivateKey_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example")) // SupplyWalletRequest | 

// Derive private key
WalletAPI.derivePrivateKey(blockchain: blockchain, supplyWalletRequest: supplyWalletRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **supplyWalletRequest** | [**SupplyWalletRequest**](SupplyWalletRequest.md) |  | 

### Return type

[**GeneralGeneratePrivateKeyResponse**](GeneralGeneratePrivateKeyResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deriveWalletIdentifier**
```swift
    open class func deriveWalletIdentifier(blockchain: Blockchain_deriveWalletIdentifier, supplyWalletRequest: SupplyWalletRequest, completion: @escaping (_ data: WalletIdentifiers?, _ error: Error?) -> Void)
```

Derive wallet identifier

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/derive-wallet-identifier\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Derive the identifier for a wallet.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let supplyWalletRequest = SupplyWalletRequest(wallet: GeneralWallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", hexPrivateKey: "hexPrivateKey_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example")) // SupplyWalletRequest | 

// Derive wallet identifier
WalletAPI.deriveWalletIdentifier(blockchain: blockchain, supplyWalletRequest: supplyWalletRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **supplyWalletRequest** | [**SupplyWalletRequest**](SupplyWalletRequest.md) |  | 

### Return type

[**WalletIdentifiers**](WalletIdentifiers.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generatePrivateKey**
```swift
    open class func generatePrivateKey(blockchain: Blockchain_generatePrivateKey, completion: @escaping (_ data: GeneralGeneratePrivateKeyResponse?, _ error: Error?) -> Void)
```

Generate private key

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a wallet.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 

// Generate private key
WalletAPI.generatePrivateKey(blockchain: blockchain) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 

### Return type

[**GeneralGeneratePrivateKeyResponse**](GeneralGeneratePrivateKeyResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateSeedPhrase**
```swift
    open class func generateSeedPhrase(blockchain: Blockchain_generateSeedPhrase, generateSeedPhraseRequest: GenerateSeedPhraseRequest? = nil, completion: @escaping (_ data: GeneralSecretPhrase?, _ error: Error?) -> Void)
```

Generate seed phrase

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a seed phrase for a wallet.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let generateSeedPhraseRequest = GenerateSeedPhraseRequest(nWords: 123) // GenerateSeedPhraseRequest |  (optional)

// Generate seed phrase
WalletAPI.generateSeedPhrase(blockchain: blockchain, generateSeedPhraseRequest: generateSeedPhraseRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **generateSeedPhraseRequest** | [**GenerateSeedPhraseRequest**](GenerateSeedPhraseRequest.md) |  | [optional] 

### Return type

[**GeneralSecretPhrase**](GeneralSecretPhrase.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAirdrop**
```swift
    open class func getAirdrop(blockchain: Blockchain_getAirdrop, generalAirdropRequest: GeneralAirdropRequest? = nil, completion: @escaping (_ data: GeneralTransactionMadeResponse?, _ error: Error?) -> Void)
```

Get an airdrop

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      - Ethereum: Receive an airdrop of 0.001 ETH on Ropsten (not real ETH).  - Solana: Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015, which is the minimum amount of SOL you need to mint an NFT and then transfer it to another wallet.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let generalAirdropRequest = GeneralAirdropRequest(recipientBlockchainIdentifier: "recipientBlockchainIdentifier_example") // GeneralAirdropRequest |  (optional)

// Get an airdrop
WalletAPI.getAirdrop(blockchain: blockchain, generalAirdropRequest: generalAirdropRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **generalAirdropRequest** | [**GeneralAirdropRequest**](GeneralAirdropRequest.md) |  | [optional] 

### Return type

[**GeneralTransactionMadeResponse**](GeneralTransactionMadeResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBalance**
```swift
    open class func getBalance(blockchain: Blockchain_getBalance, generalBalanceRequest: GeneralBalanceRequest? = nil, completion: @escaping (_ data: GeneralBalanceResponse?, _ error: Error?) -> Void)
```

Get wallet's balance of X

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in the native blockchain currency (e.g., ETH, SOL) or any token (e.g., ERC-20, NFTs, SPL, etc.).  To get the balance of a specific token, supply the `token_blockchain_identifier` of the token.   You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `token_blockchain_identifier` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT.  `Cost: 0.25 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let generalBalanceRequest = GeneralBalanceRequest(blockchainIdentifier: "blockchainIdentifier_example", unit: "unit_example", network: "network_example", tokenBlockchainIdentifier: "tokenBlockchainIdentifier_example") // GeneralBalanceRequest |  (optional)

// Get wallet's balance of X
WalletAPI.getBalance(blockchain: blockchain, generalBalanceRequest: generalBalanceRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **generalBalanceRequest** | [**GeneralBalanceRequest**](GeneralBalanceRequest.md) |  | [optional] 

### Return type

[**GeneralBalanceResponse**](GeneralBalanceResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transfer**
```swift
    open class func transfer(blockchain: Blockchain_transfer, generalTransferRequest: GeneralTransferRequest? = nil, completion: @escaping (_ data: GeneralTransactionResponse?, _ error: Error?) -> Void)
```

Transfer crypto, a token, or an NFT to another wallet

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/transfer-crypto-token-or-nft\" target=\"_blank\">See transfer ETH/SOL/crypto example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/transfer-crypto-token-or-nft\" target=\"_blank\">See transfer NFT/token example (Python, JavaScript)</a>.  This is a powerful function. It might be slightly confusing because there are several optional parameters, so take some time to review it.   This function can send - The native currency of the selected blockchain (e.g., SOL, ETH, BNB, etc.) - A token (e.g., an SPL token, ERC-20 token, etc.) - An NFT  You can sign and submit the transaction for confirmation; and you can select to simply return the compiled transaction so that you can submit it to the user for signing (e.g., via Phantom or Metamask; no private keys required in this case).  If you're transferring an NFT or a token, supply its respective `token_blockchain_identifier`.  SENDER: Note that the wallet information is used to authorize the sending of the tokens and identifies the source of the tokens. If `return_compiled_transaction = false`, we sign and submit the transaction (`wallet` is required in this case; do not provide a value for `sender_blockchain_identifier`). If `return_compiled_transaction = true`, we compile the transaction (`sender_blockchain_identifier` is required in this case; do not provide `wallet`).  RECIPIENT: `recipient_blockchain_identifier` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction (if you want us to sign and submitting it).  FEE_PAYER (Solana only): The fee payer of the transaction defaults to `wallet` (or `sender_blockchain_identifier`). To set a different fee payer, provide a value for `fee_payer_wallet`.  `Cost: 2 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let generalTransferRequest = GeneralTransferRequest(recipientBlockchainIdentifier: "recipientBlockchainIdentifier_example", wallet: GeneralWallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", hexPrivateKey: "hexPrivateKey_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example"), tokenBlockchainIdentifier: "tokenBlockchainIdentifier_example", network: "network_example", amount: "amount_example", returnCompiledTransaction: false, senderBlockchainIdentifier: "senderBlockchainIdentifier_example", feePayerWallet: GeneralFeePayerWallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", hexPrivateKey: "hexPrivateKey_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example")) // GeneralTransferRequest |  (optional)

// Transfer crypto, a token, or an NFT to another wallet
WalletAPI.transfer(blockchain: blockchain, generalTransferRequest: generalTransferRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockchain** | **String** | The blockchain you want to use  | 
 **generalTransferRequest** | [**GeneralTransferRequest**](GeneralTransferRequest.md) |  | [optional] 

### Return type

[**GeneralTransactionResponse**](GeneralTransactionResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

