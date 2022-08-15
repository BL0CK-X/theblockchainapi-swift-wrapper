# CCProjectAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCCProject**](CCProjectAPI.md#createccproject) | **POST** /checkout/v1/project | Create a project 
[**deleteCCProject**](CCProjectAPI.md#deleteccproject) | **DELETE** /checkout/v1/project/{project_id} | Delete a project 
[**getCCProject**](CCProjectAPI.md#getccproject) | **GET** /checkout/v1/project/{project_id} | Get a project 
[**listCCProjects**](CCProjectAPI.md#listccprojects) | **GET** /checkout/v1/projects | List projects 
[**updateCCProject**](CCProjectAPI.md#updateccproject) | **PUT** /checkout/v1/project/{project_id} | Update a project 


# **createCCProject**
```swift
    open class func createCCProject(cCProjectCreateRequest: CCProjectCreateRequest? = nil, completion: @escaping (_ data: CCProject?, _ error: Error?) -> Void)
```

Create a project 

A project represents that project or company that is accepting payments.  A project can have products, which can have multiple plans (prices) each.  To create a project, you just need to supply a name and a Solana public key to receive payments.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let cCProjectCreateRequest = CCProjectCreateRequest(name: "name_example", description: "description_example", webhook: "webhook_example", website: "website_example", discordWebhook: "discordWebhook_example", logoUrl: "logoUrl_example", customerIdToCollect: CCProjectCreateRequest_customer_id_to_collect(idType: "idType_example", name: "name_example", description: "description_example", _required: false), successUrl: "successUrl_example", payoutMethod: CCProjectCreateRequest_payout_method(blockchainIdentifier: "blockchainIdentifier_example")) // CCProjectCreateRequest |  (optional)

// Create a project 
CCProjectAPI.createCCProject(cCProjectCreateRequest: cCProjectCreateRequest) { (response, error) in
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
 **cCProjectCreateRequest** | [**CCProjectCreateRequest**](CCProjectCreateRequest.md) |  | [optional] 

### Return type

[**CCProject**](CCProject.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCCProject**
```swift
    open class func deleteCCProject(projectId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a project 

Delete a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Delete a project 
CCProjectAPI.deleteCCProject(projectId: projectId) { (response, error) in
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

Void (empty response body)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCCProject**
```swift
    open class func getCCProject(projectId: String, completion: @escaping (_ data: CCProject?, _ error: Error?) -> Void)
```

Get a project 

Retrieve a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Get a project 
CCProjectAPI.getCCProject(projectId: projectId) { (response, error) in
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

[**CCProject**](CCProject.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCCProjects**
```swift
    open class func listCCProjects(completion: @escaping (_ data: [CCProject]?, _ error: Error?) -> Void)
```

List projects 

List all projects associated with an account.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// List projects 
CCProjectAPI.listCCProjects() { (response, error) in
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

[**[CCProject]**](CCProject.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCCProject**
```swift
    open class func updateCCProject(projectId: String, cCProject: CCProject? = nil, completion: @escaping (_ data: CCProject?, _ error: Error?) -> Void)
```

Update a project 

Retrieve a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let cCProject = CCProject(projectId: "projectId_example", name: "name_example", description: "description_example", webhook: "webhook_example", website: "website_example", discordWebhook: "discordWebhook_example", logoUrl: "logoUrl_example", customerIdToCollect: CCProjectCreateRequest_customer_id_to_collect(idType: "idType_example", name: "name_example", description: "description_example", _required: false), successUrl: "successUrl_example", payoutMethod: CCProjectCreateRequest_payout_method(blockchainIdentifier: "blockchainIdentifier_example")) // CCProject |  (optional)

// Update a project 
CCProjectAPI.updateCCProject(projectId: projectId, cCProject: cCProject) { (response, error) in
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
 **cCProject** | [**CCProject**](CCProject.md) |  | [optional] 

### Return type

[**CCProject**](CCProject.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

