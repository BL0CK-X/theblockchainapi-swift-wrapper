# ProjectAPI

All URIs are relative to *https://api.blockchainapi.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProject**](ProjectAPI.md#createproject) | **POST** /project | Create a project 
[**createProjectVersion**](ProjectAPI.md#createprojectversion) | **POST** /project/{project_id}/{version} | Create a new project version 
[**deleteProject**](ProjectAPI.md#deleteproject) | **DELETE** /project/{project_id} | Delete a project 
[**deleteProjectVersion**](ProjectAPI.md#deleteprojectversion) | **DELETE** /project/{project_id}/{version} | Delete a project version 
[**getProject**](ProjectAPI.md#getproject) | **GET** /project/{project_id} | Get a project&#39;s metadata 
[**getProjectDeploymentStatus**](ProjectAPI.md#getprojectdeploymentstatus) | **POST** /project/{project_id}/deploy/status | Get deployment status 
[**getProjectDeploymentURL**](ProjectAPI.md#getprojectdeploymenturl) | **POST** /project/{project_id}/deploy/url | Get the deployment URL 
[**getProjectStats**](ProjectAPI.md#getprojectstats) | **GET** /project/{project_id}/stats | Get a project&#39;s stats 
[**listProjects**](ProjectAPI.md#listprojects) | **GET** /project/list | List projects 
[**updateProject**](ProjectAPI.md#updateproject) | **POST** /project/{project_id} | Update a project 
[**updateProjectDocumentation**](ProjectAPI.md#updateprojectdocumentation) | **POST** /project/{project_id}/{version}/documentation | Update the project&#39;s documentation 


# **createProject**
```swift
    open class func createProject(projectCreateRequest: ProjectCreateRequest? = nil, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Create a project 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  A project is an entire mini-API.  When you create a project, this initializes the project in our database and the API documentation for the project.  After initialization, you can <a href=\"#operation/createEndpoint\">add endpoints</a> to the documentation and deploy the project's mini-API to our servers. Learn more <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectCreateRequest = ProjectCreateRequest(projectName: "projectName_example", projectDescription: "projectDescription_example", contactEmail: "contactEmail_example", groups: [Group(sectionName: "sectionName_example", groupName: "groupName_example", groupDescription: "groupDescription_example")]) // ProjectCreateRequest |  (optional)

// Create a project 
ProjectAPI.createProject(projectCreateRequest: projectCreateRequest) { (response, error) in
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
 **projectCreateRequest** | [**ProjectCreateRequest**](ProjectCreateRequest.md) |  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProjectVersion**
```swift
    open class func createProjectVersion(projectId: String, version: String, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Create a new project version 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Create a new version for the project. The version must be higher than all existing versions. This will duplicate the existing project's latest version and auto-deploy it. To update these endpoints, simply redeploy on this project's versions.  When a project is first created, it uses the default \"0.0.1\" version.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let version = "version_example" // String | The version of the project.

// Create a new project version 
ProjectAPI.createProjectVersion(projectId: projectId, version: version) { (response, error) in
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
 **version** | **String** | The version of the project. | 

### Return type

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProject**
```swift
    open class func deleteProject(projectId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a project 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Deletes a project. This will remove the mini-API entirely from our system.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Delete a project 
ProjectAPI.deleteProject(projectId: projectId) { (response, error) in
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

# **deleteProjectVersion**
```swift
    open class func deleteProjectVersion(projectId: String, version: String, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Delete a project version 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Delete a version for the project. There must always be at least one version deployed, so you cannot delete the last remaining version of the project. This will auto-deploy the project and update its documentation, if necessary.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let version = "version_example" // String | The version of the project.

// Delete a project version 
ProjectAPI.deleteProjectVersion(projectId: projectId, version: version) { (response, error) in
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
 **version** | **String** | The version of the project. | 

### Return type

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProject**
```swift
    open class func getProject(projectId: String, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Get a project's metadata 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's metadata. None of these parameters are required. Just provide the parameters that you would like to update.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Get a project's metadata 
ProjectAPI.getProject(projectId: projectId) { (response, error) in
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

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectDeploymentStatus**
```swift
    open class func getProjectDeploymentStatus(projectId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get deployment status 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the deployment status for the project after uploading the binary. Will be: `DEPLOYED` or NOT `DEPLOYED`.  After it is `DEPLOYED`, you can then make requests to your API.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Get deployment status 
ProjectAPI.getProjectDeploymentStatus(projectId: projectId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectDeploymentURL**
```swift
    open class func getProjectDeploymentURL(projectId: String, inlineObject: InlineObject? = nil, completion: @escaping (_ data: ProjectDeploymentURL?, _ error: Error?) -> Void)
```

Get the deployment URL 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the deployment URL for the project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let inlineObject = inline_object(platform: "platform_example") // InlineObject |  (optional)

// Get the deployment URL 
ProjectAPI.getProjectDeploymentURL(projectId: projectId, inlineObject: inlineObject) { (response, error) in
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
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | [optional] 

### Return type

[**ProjectDeploymentURL**](ProjectDeploymentURL.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectStats**
```swift
    open class func getProjectStats(projectId: String, completion: @escaping (_ data: [StatItem]?, _ error: Error?) -> Void)
```

Get a project's stats 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the usage stats for your mini-API.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.

// Get a project's stats 
ProjectAPI.getProjectStats(projectId: projectId) { (response, error) in
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

[**[StatItem]**](StatItem.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjects**
```swift
    open class func listProjects(completion: @escaping (_ data: [Project]?, _ error: Error?) -> Void)
```

List projects 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  List all projects associated with your account.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi


// List projects 
ProjectAPI.listProjects() { (response, error) in
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

[**[Project]**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
```swift
    open class func updateProject(projectId: String, projectCreateRequest: ProjectCreateRequest? = nil, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Update a project 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's metadata. None of these parameters are required. Just provide the parameters that you would like to update.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let projectCreateRequest = ProjectCreateRequest(projectName: "projectName_example", projectDescription: "projectDescription_example", contactEmail: "contactEmail_example", groups: [Group(sectionName: "sectionName_example", groupName: "groupName_example", groupDescription: "groupDescription_example")]) // ProjectCreateRequest |  (optional)

// Update a project 
ProjectAPI.updateProject(projectId: projectId, projectCreateRequest: projectCreateRequest) { (response, error) in
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
 **projectCreateRequest** | [**ProjectCreateRequest**](ProjectCreateRequest.md) |  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProjectDocumentation**
```swift
    open class func updateProjectDocumentation(projectId: String, version: String, completion: @escaping (_ data: Project?, _ error: Error?) -> Void)
```

Update the project's documentation 

A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's documentation.   Your project's documentation can only represent *one* version of your API.  Thus, when you call this, the `current_documentation_version` attribute of your project is set to the version supplied in the call.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import theblockchainapi

let projectId = "projectId_example" // String | The ID of the project. Created and returned when a project is created.
let version = "version_example" // String | The version of the project.

// Update the project's documentation 
ProjectAPI.updateProjectDocumentation(projectId: projectId, version: version) { (response, error) in
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
 **version** | **String** | The version of the project. | 

### Return type

[**Project**](Project.md)

### Authorization

[APIKeyID](../README.md#APIKeyID), [APISecretKey](../README.md#APISecretKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

