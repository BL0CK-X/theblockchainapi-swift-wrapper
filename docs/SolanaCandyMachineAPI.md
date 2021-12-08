# SolanaCandyMachineAPI

All URIs are relative to *https://api.theblockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaCreateTestCandyMachine**](SolanaCandyMachineAPI.md#solanacreatetestcandymachine) | **POST** /solana/nft/candy_machine | Create a test candy machine 
[**solanaGetAllNFTsFromCandyMachine**](SolanaCandyMachineAPI.md#solanagetallnftsfromcandymachine) | **GET** /solana/nft/candy_machine/{network}/{candy_machine_id}/nfts | Get the list of all NFTs (minted and unminted) from a Solana Candy Machine 
[**solanaGetCandyMachineConfigurationDetails**](SolanaCandyMachineAPI.md#solanagetcandymachineconfigurationdetails) | **POST** /solana/nft/candy_machine/config/info | Get the details of a Solana Candy Machine configuration 
[**solanaGetCandyMachineDetails**](SolanaCandyMachineAPI.md#solanagetcandymachinedetails) | **POST** /solana/nft/candy_machine/info | Get a Metaplex candy machine&#39;s details 
[**solanaGetNFTsMintedFromCandyMachine**](SolanaCandyMachineAPI.md#solanagetnftsmintedfromcandymachine) | **POST** /solana/nft/candy_machine/nfts | Get the list of NFTs minted from a Solana Candy Machine 
[**solanaMintFromCandyMachine**](SolanaCandyMachineAPI.md#solanamintfromcandymachine) | **POST** /solana/nft/candy_machine/mint | Mint an NFT from a Metaplex candy machine


# **solanaCreateTestCandyMachine**
```swift
    open class func solanaCreateTestCandyMachine(createTestCandyMachineRequest: CreateTestCandyMachineRequest? = nil, completion: @escaping (_ data: CreateTestCandyMachineResponse?, _ error: Error?) -> Void)
```

Create a test candy machine 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/create-test-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.   Use this endpoint to create a test candy machine so that you can test your minting bot.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let createTestCandyMachineRequest = CreateTestCandyMachineRequest(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", network: "network_example") // CreateTestCandyMachineRequest |  (optional)

// Create a test candy machine 
SolanaCandyMachineAPI.solanaCreateTestCandyMachine(createTestCandyMachineRequest: createTestCandyMachineRequest) { (response, error) in
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
 **createTestCandyMachineRequest** | [**CreateTestCandyMachineRequest**](CreateTestCandyMachineRequest.md) |  | [optional] 

### Return type

[**CreateTestCandyMachineResponse**](CreateTestCandyMachineResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetAllNFTsFromCandyMachine**
```swift
    open class func solanaGetAllNFTsFromCandyMachine(network: String, candyMachineId: String, completion: @escaping (_ data: GetAllNFTsResponse?, _ error: Error?) -> Void)
```

Get the list of all NFTs (minted and unminted) from a Solana Candy Machine 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-all-nfts\" target=\"_blank\"> See examples (Python, JavaScript)</a>.  Use this endpoint to get the list of all NFTs (minted and unminted) from a Solana Candy Machine.  `Cost: 3 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let candyMachineId = "candyMachineId_example" // String | The ID of the candy machine

// Get the list of all NFTs (minted and unminted) from a Solana Candy Machine 
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
 **network** | **String** | The network ID (devnet, mainnet-beta) | 
 **candyMachineId** | **String** | The ID of the candy machine | 

### Return type

[**GetAllNFTsResponse**](GetAllNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetCandyMachineConfigurationDetails**
```swift
    open class func solanaGetCandyMachineConfigurationDetails(getConfigInfoRequest: GetConfigInfoRequest? = nil, completion: @escaping (_ data: GetConfigInfoResponse?, _ error: Error?) -> Void)
```

Get the details of a Solana Candy Machine configuration 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-config-info\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get the details of a Solana Candy Machine configuration.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getConfigInfoRequest = GetConfigInfoRequest(configAddress: "configAddress_example", network: "network_example") // GetConfigInfoRequest |  (optional)

// Get the details of a Solana Candy Machine configuration 
SolanaCandyMachineAPI.solanaGetCandyMachineConfigurationDetails(getConfigInfoRequest: getConfigInfoRequest) { (response, error) in
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
 **getConfigInfoRequest** | [**GetConfigInfoRequest**](GetConfigInfoRequest.md) |  | [optional] 

### Return type

[**GetConfigInfoResponse**](GetConfigInfoResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetCandyMachineDetails**
```swift
    open class func solanaGetCandyMachineDetails(getCandyDetailsRequest: GetCandyDetailsRequest? = nil, completion: @escaping (_ data: GetCandyDetailsResponse?, _ error: Error?) -> Void)
```

Get a Metaplex candy machine's details 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-info\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get the following details about a Metaplex candy machine: uuid, go live date, items in the collection, and the cost to mint.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getCandyDetailsRequest = GetCandyDetailsRequest(candyMachineId: "candyMachineId_example", network: "network_example") // GetCandyDetailsRequest |  (optional)

// Get a Metaplex candy machine's details 
SolanaCandyMachineAPI.solanaGetCandyMachineDetails(getCandyDetailsRequest: getCandyDetailsRequest) { (response, error) in
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
 **getCandyDetailsRequest** | [**GetCandyDetailsRequest**](GetCandyDetailsRequest.md) |  | [optional] 

### Return type

[**GetCandyDetailsResponse**](GetCandyDetailsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTsMintedFromCandyMachine**
```swift
    open class func solanaGetNFTsMintedFromCandyMachine(getMintedNFTsRequest: GetMintedNFTsRequest? = nil, completion: @escaping (_ data: [GetMintedNFTsResponse]?, _ error: Error?) -> Void)
```

Get the list of NFTs minted from a Solana Candy Machine 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-minted-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get the list of NFTs minted from a Solana Candy Machine.  See example for how to get the list of NFT hashes <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-hash-table\" target=\"_blank\">here</a>.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getMintedNFTsRequest = GetMintedNFTsRequest(candyMachineId: "candyMachineId_example", network: "network_example") // GetMintedNFTsRequest |  (optional)

// Get the list of NFTs minted from a Solana Candy Machine 
SolanaCandyMachineAPI.solanaGetNFTsMintedFromCandyMachine(getMintedNFTsRequest: getMintedNFTsRequest) { (response, error) in
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
 **getMintedNFTsRequest** | [**GetMintedNFTsRequest**](GetMintedNFTsRequest.md) |  | [optional] 

### Return type

[**[GetMintedNFTsResponse]**](GetMintedNFTsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaMintFromCandyMachine**
```swift
    open class func solanaMintFromCandyMachine(mintNFTRequest: MintNFTRequest? = nil, completion: @escaping (_ data: MintNFTResponse?, _ error: Error?) -> Void)
```

Mint an NFT from a Metaplex candy machine

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/mint-from-candy-machine\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to mint an NFT from a metaplex candy machine as soon as it drops.  `Cost: 10 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let mintNFTRequest = MintNFTRequest(configAddress: "configAddress_example", secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", network: "network_example") // MintNFTRequest |  (optional)

// Mint an NFT from a Metaplex candy machine
SolanaCandyMachineAPI.solanaMintFromCandyMachine(mintNFTRequest: mintNFTRequest) { (response, error) in
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
 **mintNFTRequest** | [**MintNFTRequest**](MintNFTRequest.md) |  | [optional] 

### Return type

[**MintNFTResponse**](MintNFTResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

