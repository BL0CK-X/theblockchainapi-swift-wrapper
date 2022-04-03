//
// ProjectAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProjectAPI {

    /**
     Create a project 
     
     - parameter projectCreateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createProject(projectCreateRequest: ProjectCreateRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        createProjectWithRequestBuilder(projectCreateRequest: projectCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a project 
     - POST /project
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  A project is an entire mini-API.  When you create a project, this initializes the project in our database and the API documentation for the project.  After initialization, you can <a href=\"#operation/createEndpoint\">add endpoints</a> to the documentation and deploy the project's mini-API to our servers. Learn more <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectCreateRequest: (body)  (optional)
     - returns: RequestBuilder<Project> 
     */
    open class func createProjectWithRequestBuilder(projectCreateRequest: ProjectCreateRequest? = nil) -> RequestBuilder<Project> {
        let localVariablePath = "/project"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: projectCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create a new project version 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createProjectVersion(projectId: String, version: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        createProjectVersionWithRequestBuilder(projectId: projectId, version: version).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new project version 
     - POST /project/{project_id}/{version}
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Create a new version for the project. The version must be higher than all existing versions. This will duplicate the existing project's latest version and auto-deploy it. To update these endpoints, simply redeploy on this project's versions.  When a project is first created, it uses the default \"0.0.1\" version.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - returns: RequestBuilder<Project> 
     */
    open class func createProjectVersionWithRequestBuilder(projectId: String, version: String) -> RequestBuilder<Project> {
        var localVariablePath = "/project/{project_id}/{version}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let versionPreEscape = "\(APIHelper.mapValueToPathItem(version))"
        let versionPostEscape = versionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{version}", with: versionPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete a project 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProject(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteProjectWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a project 
     - DELETE /project/{project_id}
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Deletes a project. This will remove the mini-API entirely from our system.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteProjectWithRequestBuilder(projectId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/project/{project_id}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = theblockchainapiAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete a project version 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProjectVersion(projectId: String, version: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        deleteProjectVersionWithRequestBuilder(projectId: projectId, version: version).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a project version 
     - DELETE /project/{project_id}/{version}
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Delete a version for the project. There must always be at least one version deployed, so you cannot delete the last remaining version of the project. This will auto-deploy the project and update its documentation, if necessary.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - returns: RequestBuilder<Project> 
     */
    open class func deleteProjectVersionWithRequestBuilder(projectId: String, version: String) -> RequestBuilder<Project> {
        var localVariablePath = "/project/{project_id}/{version}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let versionPreEscape = "\(APIHelper.mapValueToPathItem(version))"
        let versionPostEscape = versionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{version}", with: versionPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get a project's metadata 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProject(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        getProjectWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a project's metadata 
     - GET /project/{project_id}
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's metadata. None of these parameters are required. Just provide the parameters that you would like to update.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<Project> 
     */
    open class func getProjectWithRequestBuilder(projectId: String) -> RequestBuilder<Project> {
        var localVariablePath = "/project/{project_id}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get deployment status 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProjectDeploymentStatus(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) {
        getProjectDeploymentStatusWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get deployment status 
     - POST /project/{project_id}/deploy/status
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the deployment status for the project after uploading the binary. Will be: `DEPLOYED` or NOT `DEPLOYED`.  After it is `DEPLOYED`, you can then make requests to your API.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getProjectDeploymentStatusWithRequestBuilder(projectId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/project/{project_id}/deploy/status"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get the deployment URL 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter inlineObject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProjectDeploymentURL(projectId: String, inlineObject: InlineObject? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: ProjectDeploymentURL?, _ error: Error?) -> Void)) {
        getProjectDeploymentURLWithRequestBuilder(projectId: projectId, inlineObject: inlineObject).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the deployment URL 
     - POST /project/{project_id}/deploy/url
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the deployment URL for the project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter inlineObject: (body)  (optional)
     - returns: RequestBuilder<ProjectDeploymentURL> 
     */
    open class func getProjectDeploymentURLWithRequestBuilder(projectId: String, inlineObject: InlineObject? = nil) -> RequestBuilder<ProjectDeploymentURL> {
        var localVariablePath = "/project/{project_id}/deploy/url"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inlineObject)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProjectDeploymentURL>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get a project's stats 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProjectStats(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: [StatItem]?, _ error: Error?) -> Void)) {
        getProjectStatsWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a project's stats 
     - GET /project/{project_id}/stats
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Get the usage stats for your mini-API.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<[StatItem]> 
     */
    open class func getProjectStatsWithRequestBuilder(projectId: String) -> RequestBuilder<[StatItem]> {
        var localVariablePath = "/project/{project_id}/stats"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[StatItem]>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List projects 
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listProjects(apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: [Project]?, _ error: Error?) -> Void)) {
        listProjectsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List projects 
     - GET /project/list
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  List all projects associated with your account.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<[Project]> 
     */
    open class func listProjectsWithRequestBuilder() -> RequestBuilder<[Project]> {
        let localVariablePath = "/project/list"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Project]>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update a project 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter projectCreateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateProject(projectId: String, projectCreateRequest: ProjectCreateRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        updateProjectWithRequestBuilder(projectId: projectId, projectCreateRequest: projectCreateRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a project 
     - POST /project/{project_id}
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's metadata. None of these parameters are required. Just provide the parameters that you would like to update.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter projectCreateRequest: (body)  (optional)
     - returns: RequestBuilder<Project> 
     */
    open class func updateProjectWithRequestBuilder(projectId: String, projectCreateRequest: ProjectCreateRequest? = nil) -> RequestBuilder<Project> {
        var localVariablePath = "/project/{project_id}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: projectCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update the project's documentation 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateProjectDocumentation(projectId: String, version: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Project?, _ error: Error?) -> Void)) {
        updateProjectDocumentationWithRequestBuilder(projectId: projectId, version: version).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update the project's documentation 
     - POST /project/{project_id}/{version}/documentation
     - A complete example and walkthrough of the program can be found <a href=\"https://github.com/BL0CK-X/api-developer-program\" target=\"_blank\">here</a>.  Update your project's documentation.   Your project's documentation can only represent *one* version of your API.  Thus, when you call this, the `current_documentation_version` attribute of your project is set to the version supplied in the call.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter version: (path) The version of the project. 
     - returns: RequestBuilder<Project> 
     */
    open class func updateProjectDocumentationWithRequestBuilder(projectId: String, version: String) -> RequestBuilder<Project> {
        var localVariablePath = "/project/{project_id}/{version}/documentation"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let versionPreEscape = "\(APIHelper.mapValueToPathItem(version))"
        let versionPostEscape = versionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{version}", with: versionPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Project>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
