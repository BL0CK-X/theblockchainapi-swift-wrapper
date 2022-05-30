# NameServiceAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlockchainIdentifierFromName**](NameServiceAPI.md#getblockchainidentifierfromname) | **POST** /{blockchain}/{network}/name_service/name_to_blockchain_identifier | Get the identifier
[**getNameForBlockchainIdentifier**](NameServiceAPI.md#getnameforblockchainidentifier) | **POST** /{blockchain}/{network}/name_service/blockchain_identifier_to_name | Get the name


# **getBlockchainIdentifierFromName**
```swift
    open class func getBlockchainIdentifierFromName(blockchain: Blockchain_getBlockchainIdentifierFromName, network: String, inputName: InputName? = nil, completion: @escaping (_ data: InputBlockchainIdentifier?, _ error: Error?) -> Void)
```

Get the identifier

<a href=\"https://github.com/BL0CK-X/blockchain-api\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.      Get the blockchain identifier from a name.  e.g., Input `vitalik.eth` and output `0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045`  `Cost: 0.25 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let network = "network_example" // String | The network of the blockchain you selected  - Solana: `devnet`, `mainnet-beta` - Ethereum: `ropsten`, `mainnet`  Defaults when not provided (not applicable to path parameters): - Solana: `devnet` - Ethereum: `ropsten`
let inputName = InputName(name: "name_example") // InputName |  (optional)

// Get the identifier
NameServiceAPI.getBlockchainIdentifierFromName(blockchain: blockchain, network: network, inputName: inputName) { (response, error) in
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
 **inputName** | [**InputName**](InputName.md) |  | [optional] 

### Return type

[**InputBlockchainIdentifier**](InputBlockchainIdentifier.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNameForBlockchainIdentifier**
```swift
    open class func getNameForBlockchainIdentifier(blockchain: Blockchain_getNameForBlockchainIdentifier, network: String, inputBlockchainIdentifier: InputBlockchainIdentifier? = nil, completion: @escaping (_ data: InputName?, _ error: Error?) -> Void)
```

Get the name

<a href=\"https://github.com/BL0CK-X/blockchain-api\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.      Get the name from a blockchain identifier.  e.g., Input `0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045` and output `vitalik.eth`  `Cost: 0.25 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let blockchain = "blockchain_example" // String | The blockchain you want to use 
let network = "network_example" // String | The network of the blockchain you selected  - Solana: `devnet`, `mainnet-beta` - Ethereum: `ropsten`, `mainnet`  Defaults when not provided (not applicable to path parameters): - Solana: `devnet` - Ethereum: `ropsten`
let inputBlockchainIdentifier = InputBlockchainIdentifier(blockchainIdentifier: "blockchainIdentifier_example") // InputBlockchainIdentifier |  (optional)

// Get the name
NameServiceAPI.getNameForBlockchainIdentifier(blockchain: blockchain, network: network, inputBlockchainIdentifier: inputBlockchainIdentifier) { (response, error) in
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
 **inputBlockchainIdentifier** | [**InputBlockchainIdentifier**](InputBlockchainIdentifier.md) |  | [optional] 

### Return type

[**InputName**](InputName.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

