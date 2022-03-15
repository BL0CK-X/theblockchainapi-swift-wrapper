# SolanaNFTMarketplacesAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaBuyNFT**](SolanaNFTMarketplacesAPI.md#solanabuynft) | **POST** /solana/nft/marketplaces/{exchange}/buy/{network}/{mint_address} | Buy
[**solanaDelistNFT**](SolanaNFTMarketplacesAPI.md#solanadelistnft) | **POST** /solana/nft/marketplaces/{exchange}/delist/{network}/{mint_address} | Delist
[**solanaGetNFTListing**](SolanaNFTMarketplacesAPI.md#solanagetnftlisting) | **GET** /solana/nft/marketplaces/listing/{network}/{mint_address} | Get NFT Listing
[**solanaGetNFTMarketplaceAnalytics**](SolanaNFTMarketplacesAPI.md#solanagetnftmarketplaceanalytics) | **POST** /solana/nft/marketplaces/analytics | Get NFT Analytics
[**solanaGetNFTMarketplaceMarketShare**](SolanaNFTMarketplacesAPI.md#solanagetnftmarketplacemarketshare) | **GET** /solana/nft/marketplaces/analytics/market_share | Get Marketplace Market Share
[**solanaGetNFTMarketplaceRecentTransactions**](SolanaNFTMarketplacesAPI.md#solanagetnftmarketplacerecenttransactions) | **GET** /solana/nft/marketplaces/analytics/recent_transactions | Get Recent NFT Transactions
[**solanaListNFT**](SolanaNFTMarketplacesAPI.md#solanalistnft) | **POST** /solana/nft/marketplaces/{exchange}/list/{network}/{mint_address} | List


# **solanaBuyNFT**
```swift
    open class func solanaBuyNFT(network: Network_solanaBuyNFT, exchange: Exchange_solanaBuyNFT, mintAddress: String, buyRequest: BuyRequest? = nil, completion: @escaping (_ data: BuyResponse?, _ error: Error?) -> Void)
```

Buy

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/buy-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Buy an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Edennpm  `Cost: 25 Credits`, `Cost: 3 Credits on Devnet` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID
let exchange = "exchange_example" // String | The NFT exchange to interact with
let mintAddress = "mintAddress_example" // String | The mint address of the NFT you want to buy
let buyRequest = BuyRequest(wallet: Wallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example"), nftPrice: 123) // BuyRequest |  (optional)

// Buy
SolanaNFTMarketplacesAPI.solanaBuyNFT(network: network, exchange: exchange, mintAddress: mintAddress, buyRequest: buyRequest) { (response, error) in
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
 **exchange** | **String** | The NFT exchange to interact with | 
 **mintAddress** | **String** | The mint address of the NFT you want to buy | 
 **buyRequest** | [**BuyRequest**](BuyRequest.md) |  | [optional] 

### Return type

[**BuyResponse**](BuyResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaDelistNFT**
```swift
    open class func solanaDelistNFT(network: Network_solanaDelistNFT, exchange: Exchange_solanaDelistNFT, mintAddress: String, delistRequest: DelistRequest? = nil, completion: @escaping (_ data: DelistResponse?, _ error: Error?) -> Void)
```

Delist

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/delist-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Delist an NFT from a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  `Cost: 8 Credits`, `Cost: 3 Credits on Devnet` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID
let exchange = "exchange_example" // String | The NFT exchange to interact with
let mintAddress = "mintAddress_example" // String | The mint address of the NFT you want to buy
let delistRequest = DelistRequest(wallet: Wallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example")) // DelistRequest |  (optional)

// Delist
SolanaNFTMarketplacesAPI.solanaDelistNFT(network: network, exchange: exchange, mintAddress: mintAddress, delistRequest: delistRequest) { (response, error) in
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
 **exchange** | **String** | The NFT exchange to interact with | 
 **mintAddress** | **String** | The mint address of the NFT you want to buy | 
 **delistRequest** | [**DelistRequest**](DelistRequest.md) |  | [optional] 

### Return type

[**DelistResponse**](DelistResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTListing**
```swift
    open class func solanaGetNFTListing(network: Network_solanaGetNFTListing, mintAddress: String, completion: @escaping (_ data: GetNFTListingResponse?, _ error: Error?) -> Void)
```

Get NFT Listing

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/get-nft-listing\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get the Marketplace listing of a Solana NFT.  Currently checks the following Solana NFT martketplaces: SolSea, Magic Eden, Solanart, Alpha Art, Digital Eyes, Exchange.art  `Cost: 1 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID
let mintAddress = "mintAddress_example" // String | The mint address of the NFT you want to buy

// Get NFT Listing
SolanaNFTMarketplacesAPI.solanaGetNFTListing(network: network, mintAddress: mintAddress) { (response, error) in
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
 **mintAddress** | **String** | The mint address of the NFT you want to buy | 

### Return type

[**GetNFTListingResponse**](GetNFTListingResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTMarketplaceAnalytics**
```swift
    open class func solanaGetNFTMarketplaceAnalytics(nFTAnalyticsRequest: NFTAnalyticsRequest? = nil, completion: @escaping (_ data: NFTAnalyticsResponse?, _ error: Error?) -> Void)
```

Get NFT Analytics

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/analytics\" target=\"_blank\">See examples (Python, JavaScript)</a>.  A collection is a list of NFTs.  Any collection can thus be defined as a list of mint addresses.  This endpoint takes in a list of mint addresses (effectively, a collection), a start time (optional), and an end time (optional) and outputs the floor for that period, the volume for that period, and the transaction history for each NFT in the list (buy, list, delist, update price) for that period.  We are currently compiling a dictionary of collection names to list of mint addresses for public use. Please contribute <a href=\"https://github.com/BL0CK-X/solana-nft-collection-mint-addresses\" target=\"_blank\">here</a>.  Currently scans the following Solana NFT martketplaces: SolSea, Magic Eden, Solanart, Alpha Art, Digital Eyes, Exchange.art  `Cost: 15 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let nFTAnalyticsRequest = NFTAnalyticsRequest(mintAddresses: ["mintAddresses_example"], startTime: 123, endTime: 123) // NFTAnalyticsRequest |  (optional)

// Get NFT Analytics
SolanaNFTMarketplacesAPI.solanaGetNFTMarketplaceAnalytics(nFTAnalyticsRequest: nFTAnalyticsRequest) { (response, error) in
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
 **nFTAnalyticsRequest** | [**NFTAnalyticsRequest**](NFTAnalyticsRequest.md) |  | [optional] 

### Return type

[**NFTAnalyticsResponse**](NFTAnalyticsResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaGetNFTMarketplaceMarketShare**
```swift
    open class func solanaGetNFTMarketplaceMarketShare(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Marketplace Market Share

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/market-share\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get the Marketplace listing of a Solana NFT.  Currently checks for the following Solana NFT martketplaces: SolSea, Magic Eden, Solanart, Alpha Art, Digital Eyes, Exchange.art  `Cost: 3 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// Get Marketplace Market Share
SolanaNFTMarketplacesAPI.solanaGetNFTMarketplaceMarketShare() { (response, error) in
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

# **solanaGetNFTMarketplaceRecentTransactions**
```swift
    open class func solanaGetNFTMarketplaceRecentTransactions(completion: @escaping (_ data: [NFTTransaction]?, _ error: Error?) -> Void)
```

Get Recent NFT Transactions

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/recent-transactions\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Get all NFT transactions across all major marketplaces in the last 30 minutes.  Currently checks for the following Solana NFT martketplaces: SolSea, Magic Eden, Solanart, Alpha Art, Digital Eyes, Exchange.art  `Cost: 15 Credits`, (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// Get Recent NFT Transactions
SolanaNFTMarketplacesAPI.solanaGetNFTMarketplaceRecentTransactions() { (response, error) in
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

[**[NFTTransaction]**](NFTTransaction.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **solanaListNFT**
```swift
    open class func solanaListNFT(network: Network_solanaListNFT, exchange: Exchange_solanaListNFT, mintAddress: String, listRequest: ListRequest? = nil, completion: @escaping (_ data: ListResponse?, _ error: Error?) -> Void)
```

List

<a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/solana-nft-marketplaces/list-nft\" target=\"_blank\">See examples (Python, JavaScript)</a>.  List an NFT on a Solana Exchange.  Exchanges supported: SolSea, Magic Eden  `Cost: 12 Credits`, `Cost: 3 Credits on Devnet` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID
let exchange = "exchange_example" // String | The NFT exchange to interact with
let mintAddress = "mintAddress_example" // String | The mint address of the NFT you want to buy
let listRequest = ListRequest(wallet: Wallet(secretRecoveryPhrase: "secretRecoveryPhrase_example", derivationPath: "derivationPath_example", passphrase: "passphrase_example", privateKey: "TODO", b58PrivateKey: "b58PrivateKey_example"), nftPrice: 123) // ListRequest |  (optional)

// List
SolanaNFTMarketplacesAPI.solanaListNFT(network: network, exchange: exchange, mintAddress: mintAddress, listRequest: listRequest) { (response, error) in
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
 **exchange** | **String** | The NFT exchange to interact with | 
 **mintAddress** | **String** | The mint address of the NFT you want to buy | 
 **listRequest** | [**ListRequest**](ListRequest.md) |  | [optional] 

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

