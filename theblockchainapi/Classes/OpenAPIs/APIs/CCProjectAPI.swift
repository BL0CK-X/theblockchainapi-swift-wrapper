//
// CCProjectAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CCProjectAPI {

    /**
     Create a project 
     
     - parameter cCProjectCreateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCCProject(cCProjectCreateRequest: CCProjectCreateRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: CCProject?, _ error: Error?) -> Void)) -> RequestTask {
        return createCCProjectWithRequestBuilder(cCProjectCreateRequest: cCProjectCreateRequest).execute(apiResponseQueue) { result in
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
     - POST /checkout/v1/project
     - A project represents that project or company that is accepting payments.  A project can have products, which can have multiple plans (prices) each.  To create a project, you just need to supply a name and a Solana public key to receive payments.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter cCProjectCreateRequest: (body)  (optional)
     - returns: RequestBuilder<CCProject> 
     */
    open class func createCCProjectWithRequestBuilder(cCProjectCreateRequest: CCProjectCreateRequest? = nil) -> RequestBuilder<CCProject> {
        let localVariablePath = "/checkout/v1/project"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cCProjectCreateRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CCProject>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete a project 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCCProject(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCCProjectWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
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
     - DELETE /checkout/v1/project/{project_id}
     - Delete a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCCProjectWithRequestBuilder(projectId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/checkout/v1/project/{project_id}"
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
     Get a project 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCCProject(projectId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: CCProject?, _ error: Error?) -> Void)) -> RequestTask {
        return getCCProjectWithRequestBuilder(projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a project 
     - GET /checkout/v1/project/{project_id}
     - Retrieve a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - returns: RequestBuilder<CCProject> 
     */
    open class func getCCProjectWithRequestBuilder(projectId: String) -> RequestBuilder<CCProject> {
        var localVariablePath = "/checkout/v1/project/{project_id}"
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

        let localVariableRequestBuilder: RequestBuilder<CCProject>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List projects 
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCCProjects(apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: [CCProject]?, _ error: Error?) -> Void)) -> RequestTask {
        return listCCProjectsWithRequestBuilder().execute(apiResponseQueue) { result in
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
     - GET /checkout/v1/projects
     - List all projects associated with an account.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<[CCProject]> 
     */
    open class func listCCProjectsWithRequestBuilder() -> RequestBuilder<[CCProject]> {
        let localVariablePath = "/checkout/v1/projects"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[CCProject]>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Update a project 
     
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter cCProject: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCCProject(projectId: String, cCProject: CCProject? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: CCProject?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCCProjectWithRequestBuilder(projectId: projectId, cCProject: cCProject).execute(apiResponseQueue) { result in
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
     - PUT /checkout/v1/project/{project_id}
     - Retrieve a project.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter projectId: (path) The ID of the project. Created and returned when a project is created. 
     - parameter cCProject: (body)  (optional)
     - returns: RequestBuilder<CCProject> 
     */
    open class func updateCCProjectWithRequestBuilder(projectId: String, cCProject: CCProject? = nil) -> RequestBuilder<CCProject> {
        var localVariablePath = "/checkout/v1/project/{project_id}"
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cCProject)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CCProject>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}