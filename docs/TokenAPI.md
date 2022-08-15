# TokenAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTokenMetadata**](TokenAPI.md#gettokenmetadata) | **GET** /{blockchain}/{network}/token/{token_blockchain_identifier} | Get a token&#39;s metadata
[**listAllTokens**](TokenAPI.md#listalltokens) | **GET** /{blockchain}/{network}/all_tokens | List all tokens


# **getTokenMetadata**
```swift
    open class func getTokenMetadata(blockchain: Blockchain_getTokenMetadata, network: String, tokenBlockchainIdentifier: TokenBlockchainIdentifier_getTokenMetadata, completion: @escaping (_ data: TokenMetadataResponse?, _ error: Error?) -> Void)
```

Get a token's metadata

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/tokens/get-token-metadata\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.      Get the metadata of a token.  `Cost: 0.25 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let network = "network_example" // String | The network of the blockchain you selected  - Solana: `devnet`, `mainnet-beta` - Ethereum: `ropsten`, `mainnet`  Defaults when not provided (not applicable to path parameters): - Solana: `devnet` - Ethereum: `ropsten`
let tokenBlockchainIdentifier = "tokenBlockchainIdentifier_example" // String | The identifier of the token (e.g., `mint_address` on `Solana` or `token_address` on `Ethereum`) 

// Get a token's metadata
TokenAPI.getTokenMetadata(blockchain: blockchain, network: network, tokenBlockchainIdentifier: tokenBlockchainIdentifier) { (response, error) in
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
 **network** | **String** | The network of the blockchain you selected  - Solana: &#x60;devnet&#x60;, &#x60;mainnet-beta&#x60; - Ethereum: &#x60;ropsten&#x60;, &#x60;mainnet&#x60;  Defaults when not provided (not applicable to path parameters): - Solana: &#x60;devnet&#x60; - Ethereum: &#x60;ropsten&#x60; | 
 **tokenBlockchainIdentifier** | **String** | The identifier of the token (e.g., &#x60;mint_address&#x60; on &#x60;Solana&#x60; or &#x60;token_address&#x60; on &#x60;Ethereum&#x60;)  | 

### Return type

[**TokenMetadataResponse**](TokenMetadataResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllTokens**
```swift
    open class func listAllTokens(blockchain: Blockchain_listAllTokens, network: String, completion: @escaping (_ data: [TokenMetadataResponse]?, _ error: Error?) -> Void)
```

List all tokens

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/tokens/get-all-tokens\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.      List all tokens.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let network = "network_example" // String | The network of the blockchain you selected  - Solana: `devnet`, `mainnet-beta` - Ethereum: `ropsten`, `mainnet`  Defaults when not provided (not applicable to path parameters): - Solana: `devnet` - Ethereum: `ropsten`

// List all tokens
TokenAPI.listAllTokens(blockchain: blockchain, network: network) { (response, error) in
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
 **network** | **String** | The network of the blockchain you selected  - Solana: &#x60;devnet&#x60;, &#x60;mainnet-beta&#x60; - Ethereum: &#x60;ropsten&#x60;, &#x60;mainnet&#x60;  Defaults when not provided (not applicable to path parameters): - Solana: &#x60;devnet&#x60; - Ethereum: &#x60;ropsten&#x60; | 

### Return type

[**[TokenMetadataResponse]**](TokenMetadataResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

