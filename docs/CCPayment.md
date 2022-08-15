# CCPayment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **String** | The ID of the project  | [optional] 
**productId** | **String** | The ID of the associated product  | [optional] 
**planId** | **String** | The ID of the respective plan  | [optional] 
**paymentId** | **String** | The unique ID of the payment  | [optional] 
**blockchainIdentifier** | **String** | The unique identifier of the wallet from which the payment was made.  | [optional] 
**blockchainPaymentDetails** | [**CCPaymentBlockchainPaymentDetails**](CCPaymentBlockchainPaymentDetails.md) |  | [optional] 
**customerId** | **String** | The ID of the customer  | [optional] 
**paymentValidationCode** | **String** | The validation code shown to the customer. This is only visible to the customer who paid. They can use this code to redeem their subscription to their product.  | [optional] 
**periodEnd** | **Double** | A UNIX time stamp, in seconds, that identifies the end of the period of the subscription  | [optional] 
**periodStart** | **Double** | A UNIX time stamp, in seconds, that identifies the start of the period of the subscription  | [optional] 
**transactionBlockchainIdentifier** | **String** | The string that uniquely identifies the blockchain transaction  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


