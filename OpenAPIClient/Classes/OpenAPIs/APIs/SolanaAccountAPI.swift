//
// SolanaAccountAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SolanaAccountAPI {

    /**
     Get the details of an account on Solana
     
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGetAccount(network: String, publicKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Account?, _ error: Error?) -> Void)) {
        solanaGetAccountWithRequestBuilder(network: network, publicKey: publicKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get the details of an account on Solana
     - GET /solana/account/{network}/{public_key}
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-account/get-account\" target=\"_blank\">See examples (Python)</a>.      Get the details of an account on Solana. Learn more about accounts <a href=\"https://docs.solana.com/developing/programming-model/accounts\" target=\"_blank\">here</a>.
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account 
     - returns: RequestBuilder<Account> 
     */
    open class func solanaGetAccountWithRequestBuilder(network: String, publicKey: String) -> RequestBuilder<Account> {
        var localVariablePath = "/solana/account/{network}/{public_key}"
        let networkPreEscape = "\(APIHelper.mapValueToPathItem(network))"
        let networkPostEscape = networkPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{network}", with: networkPostEscape, options: .literal, range: nil)
        let publicKeyPreEscape = "\(APIHelper.mapValueToPathItem(publicKey))"
        let publicKeyPostEscape = publicKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{public_key}", with: publicKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Account>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}