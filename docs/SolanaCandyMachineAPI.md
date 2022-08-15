# SolanaCandyMachineAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaGetAllNFTsFromCandyMachine**](SolanaCandyMachineAPI.md#solanagetallnftsfromcandymachine) | **GET** /solana/nft/candy_machine/{network}/{candy_machine_id}/nfts | Get CM&#39;s NFTs  
[**solanaGetCandyMachineMetadata**](SolanaCandyMachineAPI.md#solanagetcandymachinemetadata) | **POST** /solana/nft/candy_machine/metadata | Get a CM&#39;s metadata 
[**solanaListAllCandyMachines**](SolanaCandyMachineAPI.md#solanalistallcandymachines) | **GET** /solana/nft/candy_machine/list | List all CMs
[**solanaSearchCandyMachines**](SolanaCandyMachineAPI.md#solanasearchcandymachines) | **POST** /solana/nft/candy_machine/search | Search CMs


# **solanaGetAllNFTsFromCandyMachine**
```swift
    open class func solanaGetAllNFTsFromCandyMachine(network: Network_solanaGetAllNFTsFromCandyMachine, candyMachineId: String, completion: @escaping (_ data: GetAllNFTsResponse?, _ error: Error?) -> Void)
```

Get CM's NFTs  

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-all-nfts\" target=\"_blank\"> See examples (Python, JavaScript)</a>.  Use this endpoint to get the list of all NFTs (minted and unminted) from a Solana Candy Machine.  This works for `v1` and `v2` candy machines.   *However*, for `v2` only the value for `all_nfts` is provided. To determine which are minted and unminted follow this example.  You do not need to specify `v1` or `v2` for this endpoint as it will automatically determine it from the candy machine ID.  See example for how to get the list of NFT hashes <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-hash-table\" target=\"_blank\">here</a>.    `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID
let candyMachineId = "candyMachineId_example" // String | The ID of the candy machine

// Get CM's NFTs  
SolanaCandyMachineAPI.solanaGetAllNFTsFromCandyMachine(network: network, candyMachineId: candyMachineId) { (response, error) in
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
 **network** | **String** | The network ID | 
 **candyMachineId** | **String** | The ID of the candy machine | 

### Return type

[**GetAllNFTsResponse**](GetAllNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetCandyMachineMetadata**
```swift
    open class func solanaGetCandyMachineMetadata(getCandyMetadataRequest: GetCandyMetadataRequest? = nil, completion: @escaping (_ data: GetCandyMetadataResponse?, _ error: Error?) -> Void)
```

Get a CM's metadata 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-metadata\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get metadata about a Metaplex candy machine. This includes the goLiveDate, itemsAvailable, and itemsRedeemed. To see what is included, expand the green successful response below.  NOTE: Supply exactly one of `candy_machine_id`, `config_address`, or `uuid`. If you provide more than one, you will receive a `400` error.   `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getCandyMetadataRequest = GetCandyMetadataRequest(candyMachineId: "candyMachineId_example", configAddress: "configAddress_example", uuid: "uuid_example", network: "network_example", candyMachineContractVersion: "candyMachineContractVersion_example") // GetCandyMetadataRequest |  (optional)

// Get a CM's metadata 
SolanaCandyMachineAPI.solanaGetCandyMachineMetadata(getCandyMetadataRequest: getCandyMetadataRequest) { (response, error) in
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
 **getCandyMetadataRequest** | [**GetCandyMetadataRequest**](GetCandyMetadataRequest.md) |  | [optional] 

### Return type

[**GetCandyMetadataResponse**](GetCandyMetadataResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaListAllCandyMachines**
```swift
    open class func solanaListAllCandyMachines(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List all CMs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/list-all-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can list all candy machines published to Solana mainnet.  We update this data every 15 minutes.  The output is a list of config addresses, currently about 17000 in length.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// List all CMs
SolanaCandyMachineAPI.solanaListAllCandyMachines() { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaSearchCandyMachines**
```swift
    open class func solanaSearchCandyMachines(candyMachineSearchRequest: CandyMachineSearchRequest? = nil, completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

Search CMs

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/search-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can search candy machines by their symbol, name of NFTs, uuid, configuration address, and update authority.  The output is a list of config addresses.  You can also provide multiple search clauses, such as the update authority (`update_authority=\"G17UmNGnMJ851x3M1JXocgpft1afcYedjPuFpo1ohhCk\"`) and symbol begins with \"Sol\" (`symbol=\"Sol\", symbol_search_method='begins_with'`).  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let candyMachineSearchRequest = CandyMachineSearchRequest(updateAuthority: "updateAuthority_example", updateAuthoritySearchMethod: "updateAuthoritySearchMethod_example", configAddress: "configAddress_example", configAddressSearchMethod: "configAddressSearchMethod_example", uuid: "uuid_example", uuidSearchMethod: "uuidSearchMethod_example", symbol: "symbol_example", symbolSearchMethod: "symbolSearchMethod_example", nftName: "nftName_example", nftNameIndex: "nftNameIndex_example", nftNameSearchMethod: "nftNameSearchMethod_example", network: "network_example", candyMachineContractVersion: "candyMachineContractVersion_example") // CandyMachineSearchRequest |  (optional)

// Search CMs
SolanaCandyMachineAPI.solanaSearchCandyMachines(candyMachineSearchRequest: candyMachineSearchRequest) { (response, error) in
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
 **candyMachineSearchRequest** | [**CandyMachineSearchRequest**](CandyMachineSearchRequest.md) |  | [optional] 

### Return type

**[String]**

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

