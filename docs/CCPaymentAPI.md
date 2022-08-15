# CCPaymentAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCCPayment**](CCPaymentAPI.md#getccpayment) | **GET** /checkout/v1/project/{project_id}/payment/{payment_identifier} | Get a payment 
[**listAllCCPayments**](CCPaymentAPI.md#listallccpayments) | **GET** /checkout/v1/payments | List all payments  
[**listCCProjectPayments**](CCPaymentAPI.md#listccprojectpayments) | **GET** /checkout/v1/project/{project_id}/payments | List a project&#39;s payments 


# **getCCPayment**
```swift
    open class func getCCPayment(projectId: String, paymentIdentifier: String, completion: @escaping (_ data: CCPayment?, _ error: Error?) -> Void)
```

Get a payment 

Retrieve a specific payment, either by its `payment_id` or `payment_validation_code`.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let paymentIdentifier = "paymentIdentifier_example" // String | You can supply either `payment_id` or `payment_validation_code`.  The `payment_id` is only visible by you and uniquely identifies a payment.  The `payment_validation_code` is shown exclusively to the customer and the owner of the project. It can be used to redeem a payment. You can verify a payment by pulling the payment with the `payment_validation_code`.

// Get a payment 
CCPaymentAPI.getCCPayment(projectId: projectId, paymentIdentifier: paymentIdentifier) { (response, error) in
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
 **projectId** | **String** | The ID of the project. Created and returned when a project is created. | 
 **paymentIdentifier** | **String** | You can supply either &#x60;payment_id&#x60; or &#x60;payment_validation_code&#x60;.  The &#x60;payment_id&#x60; is only visible by you and uniquely identifies a payment.  The &#x60;payment_validation_code&#x60; is shown exclusively to the customer and the owner of the project. It can be used to redeem a payment. You can verify a payment by pulling the payment with the &#x60;payment_validation_code&#x60;. | 

### Return type

[**CCPayment**](CCPayment.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllCCPayments**
```swift
    open class func listAllCCPayments(completion: @escaping (_ data: [CCPayment]?, _ error: Error?) -> Void)
```

List all payments  

List all payments associated with your account (across all projects).  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// List all payments  
CCPaymentAPI.listAllCCPayments() { (response, error) in
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

[**[CCPayment]**](CCPayment.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCCProjectPayments**
```swift
    open class func listCCProjectPayments(projectId: String, UNKNOWN_PARAMETER_NAME: ? = nil, completion: @escaping (_ data: [CCPayment]?, _ error: Error?) -> Void)
```

List a project's payments 

List all payments associated with a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let UNKNOWN_PARAMETER_NAME = TODO //  | Filter payments by a user's wallet identifier (i.e., Solana public key)  (optional)

// List a project's payments 
CCPaymentAPI.listCCProjectPayments(projectId: projectId, UNKNOWN_PARAMETER_NAME: UNKNOWN_PARAMETER_NAME) { (response, error) in
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
 **projectId** | **String** | The ID of the project. Created and returned when a project is created. | 
 **UNKNOWN_PARAMETER_NAME** | [****](.md) | Filter payments by a user&#39;s wallet identifier (i.e., Solana public key)  | [optional] 

### Return type

[**[CCPayment]**](CCPayment.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

