# SolanaWalletAPI

All URIs are relative to *https://api.theblockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaDeriveAssociatedTokenAccountAddress**](SolanaWalletAPI.md#solanaderiveassociatedtokenaccountaddress) | **GET** /solana/wallet/{public_key}/associated_token_account/{mint_address} | Derive an associated token account address
[**solanaDerivePublicKey**](SolanaWalletAPI.md#solanaderivepublickey) | **POST** /solana/wallet/public_key | Derive public key
[**solanaGenerateSecretRecoveryPhrase**](SolanaWalletAPI.md#solanageneratesecretrecoveryphrase) | **POST** /solana/wallet/secret_recovery_phrase | Generate secret phrase
[**solanaGetAirdrop**](SolanaWalletAPI.md#solanagetairdrop) | **POST** /solana/wallet/airdrop | Get an airdrop on devnet
[**solanaGetBalance**](SolanaWalletAPI.md#solanagetbalance) | **POST** /solana/wallet/balance | Get wallet&#39;s balance in SOL or any SPL
[**solanaGetNFTsBelongingToWallet**](SolanaWalletAPI.md#solanagetnftsbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/nfts | Get address&#39;s NFTs
[**solanaGetTokensBelongingToWallet**](SolanaWalletAPI.md#solanagettokensbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/tokens | Get address&#39;s tokens and respective balances
[**solanaTransfer**](SolanaWalletAPI.md#solanatransfer) | **POST** /solana/wallet/transfer | Transfer SOL, a token, or an NFT to another address


# **solanaDeriveAssociatedTokenAccountAddress**
```swift
    open class func solanaDeriveAssociatedTokenAccountAddress(publicKey: String, mintAddress: String, completion: @escaping (_ data: ATAResponse?, _ error: Error?) -> Void)
```

Derive an associated token account address

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-associated-token-account-address\" target=\"_blank\">See example (Python, JavaScript)</a>.      *Each wallet can own tokens, but in Solana, each token is actually held by an <a href=\"https://spl.solana.com/associated-token-account\" target=\"_blank\">associated token account</a> (ATA), which is an account specific for a token owned by the wallet. When you transfer an SPL token, such as Serum, or transfer an NFT, you're transfering from an ATA you own to another person's ATA for that specific token. With this endpoint, you can derive an associated token address given a wallet and a token address.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let publicKey = "publicKey_example" // String | The public key of the wallet
let mintAddress = "mintAddress_example" // String | The mint address of the token (either SPL or NFT)

// Derive an associated token account address
SolanaWalletAPI.solanaDeriveAssociatedTokenAccountAddress(publicKey: publicKey, mintAddress: mintAddress) { (response, error) in
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
 **publicKey** | **String** | The public key of the wallet | 
 **mintAddress** | **String** | The mint address of the token (either SPL or NFT) | 

### Return type

[**ATAResponse**](ATAResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaDerivePublicKey**
```swift
    open class func solanaDerivePublicKey(getPublicKeyRequest: GetPublicKeyRequest, completion: @escaping (_ data: PublicKey?, _ error: Error?) -> Void)
```

Derive public key

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-public-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a public key given a secret recovery phrase and optionally a passphrase and a derivation path.  A wallet is defined by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path. Thus, with a single secret recovery phrase, you can generate many public keys. If you are just starting, just supply the secret recovery phrase you generated with the Solana Wallet Secret Recovery Phrase endpoint.*  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getPublicKeyRequest = GetPublicKeyRequest(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example") // GetPublicKeyRequest | 

// Derive public key
SolanaWalletAPI.solanaDerivePublicKey(getPublicKeyRequest: getPublicKeyRequest) { (response, error) in
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
 **getPublicKeyRequest** | [**GetPublicKeyRequest**](GetPublicKeyRequest.md) |  | 

### Return type

[**PublicKey**](PublicKey.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGenerateSecretRecoveryPhrase**
```swift
    open class func solanaGenerateSecretRecoveryPhrase(completion: @escaping (_ data: SecretPhrase?, _ error: Error?) -> Void)
```

Generate secret phrase

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a secret recovery phrase for a Solana wallet. Complete the wallet creation by using the endpoint below.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// Generate secret phrase
SolanaWalletAPI.solanaGenerateSecretRecoveryPhrase() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**SecretPhrase**](SecretPhrase.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAirdrop**
```swift
    open class func solanaGetAirdrop(airdropRequest: AirdropRequest? = nil, completion: @escaping (_ data: TransferResponse?, _ error: Error?) -> Void)
```

Get an airdrop on devnet

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015,  which is the minimum amount of SOL you need to mint a Metaplex NFT and then transfer it to another wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let airdropRequest = AirdropRequest(recipientAddress: "recipientAddress_example") // AirdropRequest |  (optional)

// Get an airdrop on devnet
SolanaWalletAPI.solanaGetAirdrop(airdropRequest: airdropRequest) { (response, error) in
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
 **airdropRequest** | [**AirdropRequest**](AirdropRequest.md) |  | [optional] 

### Return type

[**TransferResponse**](TransferResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetBalance**
```swift
    open class func solanaGetBalance(balanceRequest: BalanceRequest? = nil, completion: @escaping (_ data: BalanceResponse?, _ error: Error?) -> Void)
```

Get wallet's balance in SOL or any SPL

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript) [More examples coming soon]</a>.      See the balance of a wallet in SOL or any SPL token.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let balanceRequest = BalanceRequest(publicKey: "publicKey_example", unit: "unit_example", network: "network_example", mintAddress: "mintAddress_example") // BalanceRequest |  (optional)

// Get wallet's balance in SOL or any SPL
SolanaWalletAPI.solanaGetBalance(balanceRequest: balanceRequest) { (response, error) in
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
 **balanceRequest** | [**BalanceRequest**](BalanceRequest.md) |  | [optional] 

### Return type

[**BalanceResponse**](BalanceResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTsBelongingToWallet**
```swift
    open class func solanaGetNFTsBelongingToWallet(network: String, publicKey: String, completion: @escaping (_ data: ListNFTsResponse?, _ error: Error?) -> Void)
```

Get address's NFTs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the NFTs that belong to a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let publicKey = "publicKey_example" // String | The public key of the account whose list of owned NFTs you want to get

// Get address's NFTs
SolanaWalletAPI.solanaGetNFTsBelongingToWallet(network: network, publicKey: publicKey) { (response, error) in
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
 **network** | **String** | The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String** | The public key of the account whose list of owned NFTs you want to get | 

### Return type

[**ListNFTsResponse**](ListNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetTokensBelongingToWallet**
```swift
    open class func solanaGetTokensBelongingToWallet(network: String, publicKey: String, completion: @escaping (_ data: [AnyCodable]?, _ error: Error?) -> Void)
```

Get address's tokens and respective balances

<a href=\"\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.      See the token holdings of a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let publicKey = "publicKey_example" // String | The public key of the account whose list of owned NFTs you want to get

// Get address's tokens and respective balances
SolanaWalletAPI.solanaGetTokensBelongingToWallet(network: network, publicKey: publicKey) { (response, error) in
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
 **network** | **String** | The network ID (devnet, mainnet-beta) | 
 **publicKey** | **String** | The public key of the account whose list of owned NFTs you want to get | 

### Return type

[**[AnyCodable]**](AnyCodable.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaTransfer**
```swift
    open class func solanaTransfer(transferRequest: TransferRequest? = nil, completion: @escaping (_ data: TransferResponse?, _ error: Error?) -> Void)
```

Transfer SOL, a token, or an NFT to another address

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-sol\" target=\"_blank\">See transfer SOL example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-nft\" target=\"_blank\">See transfer NFT example (can also be used for SPL token) (Python, JavaScript)</a>.  Transfer SOL, a token or an NFT to another address. If you're transferring an NFT, supply the `mint` (the address of the mint) for the `token_address`.  If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let transferRequest = TransferRequest(recipientAddress: "recipientAddress_example", secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", tokenAddress: "tokenAddress_example", network: "network_example", amount: "amount_example") // TransferRequest |  (optional)

// Transfer SOL, a token, or an NFT to another address
SolanaWalletAPI.solanaTransfer(transferRequest: transferRequest) { (response, error) in
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
 **transferRequest** | [**TransferRequest**](TransferRequest.md) |  | [optional] 

### Return type

[**TransferResponse**](TransferResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

