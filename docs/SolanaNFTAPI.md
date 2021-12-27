# SolanaNFTAPI

All URIs are relative to *https://api.theblockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaCreateNFT**](SolanaNFTAPI.md#solanacreatenft) | **POST** /solana/nft | Create an NFT on Solana
[**solanaGetNFT**](SolanaNFTAPI.md#solanagetnft) | **GET** /solana/nft/{network}/{mint_address} | Get an NFT&#39;s metadata
[**solanaGetNFTMintFee**](SolanaNFTAPI.md#solanagetnftmintfee) | **GET** /solana/nft/mint/fee | Get the NFT mint fee
[**solanaGetNFTOwner**](SolanaNFTAPI.md#solanagetnftowner) | **GET** /solana/nft/{network}/{mint_address}/owner | Get owner of an NFT
[**solanaGetNFTsCandyMachineId**](SolanaNFTAPI.md#solanagetnftscandymachineid) | **POST** /solana/nft/candy_machine_id | Get the ID of the candy machine of an NFT 
[**solanaSearchNFTs**](SolanaNFTAPI.md#solanasearchnfts) | **POST** /solana/nft/search | Search NFTs on Solana


# **solanaCreateNFT**
```swift
    open class func solanaCreateNFT(nFTMintRequest: NFTMintRequest? = nil, completion: @escaping (_ data: NFT?, _ error: Error?) -> Void)
```

Create an NFT on Solana

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/create-an-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Create a Metaplex NFT on Solana. Read more on this <a href=\"https://blog.theblockchainapi.com/2021/11/16/a-note-on-nfts.html\" target=\"_blank\">here</a>.  To add attributes to the NFT, add them to a JSON file and upload that to Arweave/IPFS/Filecoin. The JSON file should follow this format: <a href=\"https://docs.metaplex.com/nft-standard\" target=\"_blank\">NFT Standard.</a> (See the \"URI JSON Schema\" section in that article). Then supply the link to the JSON file in `nft_url`. You don't need to use `nft_metadata`.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-nft/get-nft-metadata\" target=\"_blank\">See examples (Python, JavaScript)</a>.       Get the metadata of an NFT.  If you're looking for metadata such as attributes and others, you can retrieve them from the link in the URI field of the NFT metadata returned. See the example on the right. The URI is an Arweave URL. That contains the attributes and other information about the NFT. That URL is stored on the Solana blockchain.  `Cost: 1 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)

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

# **solanaSearchNFTs**
```swift
    open class func solanaSearchNFTs(nFTSearchRequest: NFTSearchRequest? = nil, completion: @escaping (_ data: NFTSearchResponse?, _ error: Error?) -> Void)
```

Search NFTs on Solana

<a href=\"\" target=\"_blank\">See examples (Python, JavaScript) [Coming Soon]</a>.  With this endpoint, you can search for NFTs by their symbol, name of NFTs, uuid, configuration address, and update authority.  The output is a list of NFTs that match your query.  You can also provide multiple search clauses, such as the update authority (`update_authority=\"G17UmNGnMJ851x3M1JXocgpft1afcYedjPuFpo1ohhCk\"`) and symbol begins with \"Sol\" (`symbol=\"Sol\", symbol_search_method='begins_with'`).  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let nFTSearchRequest = NFTSearchRequest(updateAuthority: "updateAuthority_example", updateAuthoritySearchMethod: "updateAuthoritySearchMethod_example", mintAddress: "mintAddress_example", mintAddressSearchMethod: "mintAddressSearchMethod_example", name: "name_example", nameSearchMethod: "nameSearchMethod_example", uri: "uri_example", uriSearchMethod: "uriSearchMethod_example", symbol: "symbol_example", symbolSearchMethod: "symbolSearchMethod_example", network: "network_example") // NFTSearchRequest |  (optional)

// Search NFTs on Solana
SolanaNFTAPI.solanaSearchNFTs(nFTSearchRequest: nFTSearchRequest) { (response, error) in
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
 **nFTSearchRequest** | [**NFTSearchRequest**](NFTSearchRequest.md) |  | [optional] 

### Return type

[**NFTSearchResponse**](NFTSearchResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
