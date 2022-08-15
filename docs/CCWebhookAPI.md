# CCWebhookAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCCWebhook**](CCWebhookAPI.md#getccwebhook) | **POST** /webhook/v1/project/{project_id}/webhook/{webhook_identifier} | Get a webhook 
[**listCCProjectWebhooks**](CCWebhookAPI.md#listccprojectwebhooks) | **POST** /webhook/v1/project/{project_id}/webhooks | List project&#39;s webhooks 
[**validateCCWebhook**](CCWebhookAPI.md#validateccwebhook) | **POST** /webhook/v1/project/{project_id}/webhook/{webhook_identifier}/validate | Validate a webhook 


# **getCCWebhook**
```swift
    open class func getCCWebhook(projectId: String, webhookIdentifier: String, completion: @escaping (_ data: CCWebhook?, _ error: Error?) -> Void)
```

Get a webhook 

Retrieve the details of a webhook sent to you.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let webhookIdentifier = "webhookIdentifier_example" // String | The ID of the webhook. Created and returned when a webhook is sent.

// Get a webhook 
CCWebhookAPI.getCCWebhook(projectId: projectId, webhookIdentifier: webhookIdentifier) { (response, error) in
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
 **webhookIdentifier** | **String** | The ID of the webhook. Created and returned when a webhook is sent. | 

### Return type

[**CCWebhook**](CCWebhook.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCCProjectWebhooks**
```swift
    open class func listCCProjectWebhooks(projectId: String, completion: @escaping (_ data: [CCWebhook]?, _ error: Error?) -> Void)
```

List project's webhooks 

List all webhooks sent to you and their respective responses from your server.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// List project's webhooks 
CCWebhookAPI.listCCProjectWebhooks(projectId: projectId) { (response, error) in
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

### Return type

[**[CCWebhook]**](CCWebhook.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateCCWebhook**
```swift
    open class func validateCCWebhook(projectId: String, webhookIdentifier: String, cCWebhookValidateRequest: CCWebhookValidateRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Validate a webhook 

Validate whether a webhook you received was actually sent from us.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let webhookIdentifier = "webhookIdentifier_example" // String | The ID of the webhook. Created and returned when a webhook is sent.
let cCWebhookValidateRequest = CCWebhookValidateRequest(webhookId: "webhookId_example", webhookSignature: "TODO", timeSent: 123) // CCWebhookValidateRequest |  (optional)

// Validate a webhook 
CCWebhookAPI.validateCCWebhook(projectId: projectId, webhookIdentifier: webhookIdentifier, cCWebhookValidateRequest: cCWebhookValidateRequest) { (response, error) in
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
 **webhookIdentifier** | **String** | The ID of the webhook. Created and returned when a webhook is sent. | 
 **cCWebhookValidateRequest** | [**CCWebhookValidateRequest**](CCWebhookValidateRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

