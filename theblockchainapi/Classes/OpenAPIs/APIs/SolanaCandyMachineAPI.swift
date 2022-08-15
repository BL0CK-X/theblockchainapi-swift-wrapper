//
// SolanaCandyMachineAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SolanaCandyMachineAPI {

    /**
     * enum for parameter network
     */
    public enum Network_solanaGetAllNFTsFromCandyMachine: String, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }

    /**
     Get CM's NFTs  
     
     - parameter network: (path) The network ID 
     - parameter candyMachineId: (path) The ID of the candy machine 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func solanaGetAllNFTsFromCandyMachine(network: Network_solanaGetAllNFTsFromCandyMachine, candyMachineId: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GetAllNFTsResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return solanaGetAllNFTsFromCandyMachineWithRequestBuilder(network: network, candyMachineId: candyMachineId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get CM's NFTs  
     - GET /solana/nft/candy_machine/{network}/{candy_machine_id}/nfts
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-all-nfts\" target=\"_blank\"> See examples (Python, JavaScript)</a>.  Use this endpoint to get the list of all NFTs (minted and unminted) from a Solana Candy Machine.  This works for `v1` and `v2` candy machines.   *However*, for `v2` only the value for `all_nfts` is provided. To determine which are minted and unminted follow this example.  You do not need to specify `v1` or `v2` for this endpoint as it will automatically determine it from the candy machine ID.  See example for how to get the list of NFT hashes <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-hash-table\" target=\"_blank\">here</a>.    `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter network: (path) The network ID 
     - parameter candyMachineId: (path) The ID of the candy machine 
     - returns: RequestBuilder<GetAllNFTsResponse> 
     */
    open class func solanaGetAllNFTsFromCandyMachineWithRequestBuilder(network: Network_solanaGetAllNFTsFromCandyMachine, candyMachineId: String) -> RequestBuilder<GetAllNFTsResponse> {
        var localVariablePath = "/solana/nft/candy_machine/{network}/{candy_machine_id}/nfts"
        let networkPreEscape = "\(network.rawValue)"
        let networkPostEscape = networkPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{network}", with: networkPostEscape, options: .literal, range: nil)
        let candyMachineIdPreEscape = "\(APIHelper.mapValueToPathItem(candyMachineId))"
        let candyMachineIdPostEscape = candyMachineIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{candy_machine_id}", with: candyMachineIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetAllNFTsResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get a CM's metadata 
     
     - parameter getCandyMetadataRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func solanaGetCandyMachineMetadata(getCandyMetadataRequest: GetCandyMetadataRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GetCandyMetadataResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return solanaGetCandyMachineMetadataWithRequestBuilder(getCandyMetadataRequest: getCandyMetadataRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a CM's metadata 
     - POST /solana/nft/candy_machine/metadata
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/get-candy-machine-metadata\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to get metadata about a Metaplex candy machine. This includes the goLiveDate, itemsAvailable, and itemsRedeemed. To see what is included, expand the green successful response below.  NOTE: Supply exactly one of `candy_machine_id`, `config_address`, or `uuid`. If you provide more than one, you will receive a `400` error.   `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter getCandyMetadataRequest: (body)  (optional)
     - returns: RequestBuilder<GetCandyMetadataResponse> 
     */
    open class func solanaGetCandyMachineMetadataWithRequestBuilder(getCandyMetadataRequest: GetCandyMetadataRequest? = nil) -> RequestBuilder<GetCandyMetadataResponse> {
        let localVariablePath = "/solana/nft/candy_machine/metadata"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getCandyMetadataRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetCandyMetadataResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     List all CMs
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func solanaListAllCandyMachines(apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return solanaListAllCandyMachinesWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all CMs
     - GET /solana/nft/candy_machine/list
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/list-all-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can list all candy machines published to Solana mainnet.  We update this data every 15 minutes.  The output is a list of config addresses, currently about 17000 in length.  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func solanaListAllCandyMachinesWithRequestBuilder() -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/solana/nft/candy_machine/list"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Search CMs
     
     - parameter candyMachineSearchRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func solanaSearchCandyMachines(candyMachineSearchRequest: CandyMachineSearchRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: [String]?, _ error: Error?) -> Void)) -> RequestTask {
        return solanaSearchCandyMachinesWithRequestBuilder(candyMachineSearchRequest: candyMachineSearchRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search CMs
     - POST /solana/nft/candy_machine/search
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-candy-machine/search-candy-machines\" target=\"_blank\">See examples (Python, JavaScript)</a>.  With this endpoint, you can search candy machines by their symbol, name of NFTs, uuid, configuration address, and update authority.  The output is a list of config addresses.  You can also provide multiple search clauses, such as the update authority (`update_authority=\"G17UmNGnMJ851x3M1JXocgpft1afcYedjPuFpo1ohhCk\"`) and symbol begins with \"Sol\" (`symbol=\"Sol\", symbol_search_method='begins_with'`).  `Cost: 2 Credits` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter candyMachineSearchRequest: (body)  (optional)
     - returns: RequestBuilder<[String]> 
     */
    open class func solanaSearchCandyMachinesWithRequestBuilder(candyMachineSearchRequest: CandyMachineSearchRequest? = nil) -> RequestBuilder<[String]> {
        let localVariablePath = "/solana/nft/candy_machine/search"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: candyMachineSearchRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String]>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
