# SolanaNFTAPI

All URIs are relative to *https://api.theblockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaCreateNFT**](SolanaNFTAPI.md#solanacreatenft) | **POST** /solana/nft | Create an NFT on Solana
[**solanaGetNFT**](SolanaNFTAPI.md#solanagetnft) | **GET** /solana/nft/{network}/{mint_address} | Get an NFT&#39;s metadata
[**solanaGetNFTMintFee**](SolanaNFTAPI.md#solanagetnftmintfee) | **GET** /solana/nft/mint/fee | Get the NFT mint fee
[**solanaGetNFTOwner**](SolanaNFTAPI.md#solanagetnftowner) | **GET** /solana/nft/{network}/{mint_address}/owner | Get owner of an NFT
[**solanaGetNFTsCandyMachineId**](SolanaNFTAPI.md#solanagetnftscandymachineid) | **POST** /solana/nft/candy_machine_id | Get the ID of the candy machine of an NFT 


# **solanaCreateNFT**
```swift
    open class func solanaCreateNFT(nFTMintRequest: NFTMintRequest? = nil, completion: @escaping (_ data: NFT?, _ error: Error?) -> Void)
```

Create an NFT on Solana

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/create-an-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Create a Metaplex NFT on Solana. Read more on this <a href=\"https://blog.theblockchainapi.com/2021/11/16/a-note-on-nfts.html\" target=\"_blank\">here</a>.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let nFTMintRequest = NFTMintRequest(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", nftName: "nftName_example", nftSymbol: "nftSymbol_example", nftDescription: "nftDescription_example", nftUrl: "nftUrl_example", nftMetadata: "nftMetadata_example", nftUploadMethod: "nftUploadMethod_example", isMutable: false, isMasterEdition: false, sellerFeeBasisPoints: 123, creators: ["creators_example"], share: [123], network: "network_example") // NFTMintRequest |  (optional)

// Create an NFT on Solana
SolanaNFTAPI.solanaCreateNFT(nFTMintRequest: nFTMintRequest) { (response, error) in
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
 **nFTMintRequest** | [**NFTMintRequest**](NFTMintRequest.md) |  | [optional] 

### Return type

[**NFT**](NFT.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFT**
```swift
    open class func solanaGetNFT(network: String, mintAddress: String, completion: @escaping (_ data: NFT?, _ error: Error?) -> Void)
```

Get an NFT's metadata

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/get-nft-metadata\" target=\"_blank\">See examples (Python, JavaScript)</a>.       Get the metadata of an NFT.  `Cost: 1 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let mintAddress = "mintAddress_example" // String | The mint address of the NFT

// Get an NFT's metadata
SolanaNFTAPI.solanaGetNFT(network: network, mintAddress: mintAddress) { (response, error) in
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
 **mintAddress** | **String** | The mint address of the NFT | 

### Return type

[**NFT**](NFT.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTMintFee**
```swift
    open class func solanaGetNFTMintFee(completion: @escaping (_ data: NFTMintFee?, _ error: Error?) -> Void)
```

Get the NFT mint fee

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/get-nft-mint-fee\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the estimated fee for minting an NFT on the Solana blockchain using the Metaplex protocol.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// Get the NFT mint fee
SolanaNFTAPI.solanaGetNFTMintFee() { (response, error) in
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

[**NFTMintFee**](NFTMintFee.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTOwner**
```swift
    open class func solanaGetNFTOwner(network: String, mintAddress: String, completion: @escaping (_ data: NFTOwnerResponse?, _ error: Error?) -> Void)
```

Get owner of an NFT

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/get-nft-owner\" target=\"_blank\">See examples (Python, JavaScript)</a>.       Get the owner of an NFT. This returns the public key of the wallet that owns the associated token account that owns the NFT.  If you want to get the associated token account that literally owns the NFT, derive the associated token account address from the public key returned and the NFT mint address using <a href=\"#operation/solanaDeriveAssociatedTokenAccountAddress\">this endpoint</a>.  `Cost: 1 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let mintAddress = "mintAddress_example" // String | The mint address of the NFT

// Get owner of an NFT
SolanaNFTAPI.solanaGetNFTOwner(network: network, mintAddress: mintAddress) { (response, error) in
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
 **mintAddress** | **String** | The mint address of the NFT | 

### Return type

[**NFTOwnerResponse**](NFTOwnerResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTsCandyMachineId**
```swift
    open class func solanaGetNFTsCandyMachineId(getCandyMachineIDRequest: GetCandyMachineIDRequest? = nil, completion: @escaping (_ data: GetCandyMachineIDResponse?, _ error: Error?) -> Void)
```

Get the ID of the candy machine of an NFT 

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/get-nft-candy-machine-id\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get the candy machine ID from where the NFT came, if any. NFTs can also be minted without a candy machine.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let getCandyMachineIDRequest = GetCandyMachineIDRequest(mintAddress: "mintAddress_example", network: "network_example") // GetCandyMachineIDRequest |  (optional)

// Get the ID of the candy machine of an NFT 
SolanaNFTAPI.solanaGetNFTsCandyMachineId(getCandyMachineIDRequest: getCandyMachineIDRequest) { (response, error) in
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
 **getCandyMachineIDRequest** | [**GetCandyMachineIDRequest**](GetCandyMachineIDRequest.md) |  | [optional] 

### Return type

[**GetCandyMachineIDResponse**](GetCandyMachineIDResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

