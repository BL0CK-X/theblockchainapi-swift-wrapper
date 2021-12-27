//
// FileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FileAPI {

    /**
     Upload a file
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetFileResponse?, _ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a file
     - POST /file
     - Easily upload a file to any of IPFS, Arweave, and Filecoin. Not publicly available. Please sign up for <a href=\"https://forms.gle/N4KSqcptpSrHQ1427\" target=\"_blank\">the waitlist</a>.
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<GetFileResponse> 
     */
    open class func uploadFileWithRequestBuilder() -> RequestBuilder<GetFileResponse> {
        let localVariablePath = "/file"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetFileResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}