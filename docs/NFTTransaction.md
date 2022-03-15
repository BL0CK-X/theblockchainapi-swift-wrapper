# NFTTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blockTime** | **Double** | An epoch time stamp in UTC time that represents the time of the block where the transaction was processed  | [optional] 
**exchange** | **String** | The NFT exchange on which the transaction occurred | [optional] 
**exchangeReadable** | **String** | A readable version of the NFT exchange | [optional] 
**mintAddress** | **String** | The mint address of the NFT  | [optional] 
**operation** | **String** | The operation of the transaction | [optional] 
**seller** | **String** | The public key of the wallet that listed the NFT | [optional] 
**buyer** | **String** | The public key of the buyer. This only exists in &#x60;buy&#x60; transactions.  | [optional] 
**transactionSignature** | **String** | The signature of the transaction. You can look up each transaction on explorer.solana.com  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


