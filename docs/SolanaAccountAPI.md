# SolanaAccountAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaGetAccount**](SolanaAccountAPI.md#solanagetaccount) | **GET** /solana/account/{network}/{public_key} | Get the details of an account on Solana
[**solanaGetAccountIsCandyMachine**](SolanaAccountAPI.md#solanagetaccountiscandymachine) | **GET** /solana/account/{network}/{public_key}/is_candy_machine | Get if account is candy machine
[**solanaGetAccountIsNFT**](SolanaAccountAPI.md#solanagetaccountisnft) | **GET** /solana/account/{network}/{public_key}/is_nft | Get if account is NFT


# **solanaGetAccount**
```swift
    open class func solanaGetAccount(network: String, publicKey: String, completion: @escaping (_ data: Account?, _ error: Error?) -> Void)
```

Get the details of an account on Solana

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-account\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of an account on Solana. Learn more about accounts <a href=\"https://docs.solana.com/developing/programming-model/accounts\" target=\"_blank\">here</a>.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let publicKey = "publicKey_example" // String | The public key of the account

// Get the details of an account on Solana
SolanaAccountAPI.solanaGetAccount(network: network, publicKey: publicKey) { (response, error) in
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
 **publicKey** | **String** | The public key of the account | 

### Return type

[**Account**](Account.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAccountIsCandyMachine**
```swift
    open class func solanaGetAccountIsCandyMachine(network: String, publicKey: String, completion: @escaping (_ data: AccountIsCandyMachine?, _ error: Error?) -> Void)
```

Get if account is candy machine

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key address corresponds to a candy machine ID or candy machine configuration.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let publicKey = "publicKey_example" // String | The public key of the account

// Get if account is candy machine
SolanaAccountAPI.solanaGetAccountIsCandyMachine(network: network, publicKey: publicKey) { (response, error) in
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
 **publicKey** | **String** | The public key of the account | 

### Return type

[**AccountIsCandyMachine**](AccountIsCandyMachine.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAccountIsNFT**
```swift
    open class func solanaGetAccountIsNFT(network: String, publicKey: String, completion: @escaping (_ data: AccountIsNFT?, _ error: Error?) -> Void)
```

Get if account is NFT

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-is-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Determine whether or not a public key is an NFT `mint address`  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let publicKey = "publicKey_example" // String | The public key of the account

// Get if account is NFT
SolanaAccountAPI.solanaGetAccountIsNFT(network: network, publicKey: publicKey) { (response, error) in
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
 **publicKey** | **String** | The public key of the account | 

### Return type

[**AccountIsNFT**](AccountIsNFT.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

