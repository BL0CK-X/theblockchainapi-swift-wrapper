# SolanaTransactionAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**solanaGetTransaction**](SolanaTransactionAPI.md#solanagettransaction) | **GET** /solana/transaction/{network}/{tx_signature} | Get the details of a transaction made on Solana


# **solanaGetTransaction**
```swift
    open class func solanaGetTransaction(network: String, txSignature: String, completion: @escaping (_ data: Transaction?, _ error: Error?) -> Void)
```

Get the details of a transaction made on Solana

<a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-transaction/get-transaction\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Get the details of a transaction made on Solana.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let network = "network_example" // String | The network ID (devnet, mainnet-beta)
let txSignature = "txSignature_example" // String | The transaction signature of the transaction

// Get the details of a transaction made on Solana
SolanaTransactionAPI.solanaGetTransaction(network: network, txSignature: txSignature) { (response, error) in
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
 **txSignature** | **String** | The transaction signature of the transaction | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

