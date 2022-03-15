# EndpointAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEndpoint**](EndpointAPI.md#deleteendpoint) | **POST** /endpoint/delete | Delete an endpoint 
[**getEndpoint**](EndpointAPI.md#getendpoint) | **POST** /endpoint/metadata | Get an endpoint&#39;s metadata 
[**listEndpoints**](EndpointAPI.md#listendpoints) | **GET** /endpoint/list | List all endpoints 
[**setEndpoint**](EndpointAPI.md#setendpoint) | **POST** /endpoint | Create / update an endpoint 


# **deleteEndpoint**
```swift
    open class func deleteEndpoint(endpointReference: EndpointReference? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an endpoint 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Deletes an endpoint from a project. This endpoint removes the endpoint from the project's documentation. However, this does un-deploy the endpoint. To do so, you must <a href=\"#operation/deployProject\">deploy the project</a>.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let endpointReference = EndpointReference(projectId: "projectId_example", version: "version_example", path: "path_example") // EndpointReference |  (optional)

// Delete an endpoint 
EndpointAPI.deleteEndpoint(endpointReference: endpointReference) { (response, error) in
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
 **endpointReference** | [**EndpointReference**](EndpointReference.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndpoint**
```swift
    open class func getEndpoint(endpointReference: EndpointReference? = nil, completion: @escaping (_ data: Endpoint?, _ error: Error?) -> Void)
```

Get an endpoint's metadata 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get an endpoint's metadata from a project.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let endpointReference = EndpointReference(projectId: "projectId_example", version: "version_example", path: "path_example") // EndpointReference |  (optional)

// Get an endpoint's metadata 
EndpointAPI.getEndpoint(endpointReference: endpointReference) { (response, error) in
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
 **endpointReference** | [**EndpointReference**](EndpointReference.md) |  | [optional] 

### Return type

[**Endpoint**](Endpoint.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEndpoints**
```swift
    open class func listEndpoints(completion: @escaping (_ data: [Endpoint]?, _ error: Error?) -> Void)
```

List all endpoints 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  List all endpoints that you have added under your account.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// List all endpoints 
EndpointAPI.listEndpoints() { (response, error) in
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

[**[Endpoint]**](Endpoint.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setEndpoint**
```swift
    open class func setEndpoint(endpoint: Endpoint? = nil, completion: @escaping (_ data: Endpoint?, _ error: Error?) -> Void)
```

Create / update an endpoint 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Create or update an `endpoint` for a `project`.   An `endpoint` is a function that is a part of a mini-API `project`.  This endpoint adds the `endpoint` to the `project`'s documentation. However, this does not deploy the `endpoint`. To do so, you must <a href=\"#operation/deployProject\">deploy the project</a>.  All attributes except `group_name` are required if **creating** an `endpoint`.  Only `path`, `project_id`, and `version` are required if **updating** an `endpoint`.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let endpoint = Endpoint(projectId: "projectId_example", version: "version_example", path: "path_example", operationId: "operationId_example", readableName: "readableName_example", summary: "summary_example", description: "description_example", credits: 123, groupName: "groupName_example", inputSpecification: [ParameterSpecification(type: "type_example", name: "name_example", description: "description_example", _required: false)], inputExamples: "TODO", outputSpecification: [nil], outputExamples: "TODO") // Endpoint |  (optional)

// Create / update an endpoint 
EndpointAPI.setEndpoint(endpoint: endpoint) { (response, error) in
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
 **endpoint** | [**Endpoint**](Endpoint.md) |  | [optional] 

### Return type

[**Endpoint**](Endpoint.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

