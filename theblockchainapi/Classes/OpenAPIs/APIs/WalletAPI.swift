//
// WalletAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WalletAPI {

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_derivePrivateKey: String, CaseIterable {
        case avalanche = "avalanche"
        case binanceSmartChain = "binance_smart_chain"
        case ethereum = "ethereum"
        case near = "near"
        case solana = "solana"
    }

    /**
     Derive private key
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter supplyWalletRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func derivePrivateKey(blockchain: Blockchain_derivePrivateKey, supplyWalletRequest: SupplyWalletRequest, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralGeneratePrivateKeyResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return derivePrivateKeyWithRequestBuilder(blockchain: blockchain, supplyWalletRequest: supplyWalletRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Derive private key
     - POST /{blockchain}/wallet/private_key
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely derive a private key for a wallet.   For example, if you have a seed phrase and want to derive the corresponding private key, use this endpoint.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter supplyWalletRequest: (body)  
     - returns: RequestBuilder<GeneralGeneratePrivateKeyResponse> 
     */
    open class func derivePrivateKeyWithRequestBuilder(blockchain: Blockchain_derivePrivateKey, supplyWalletRequest: SupplyWalletRequest) -> RequestBuilder<GeneralGeneratePrivateKeyResponse> {
        var localVariablePath = "/{blockchain}/wallet/private_key"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: supplyWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralGeneratePrivateKeyResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_deriveWalletIdentifier: String, CaseIterable {
        case avalanche = "avalanche"
        case binanceSmartChain = "binance_smart_chain"
        case ethereum = "ethereum"
        case near = "near"
        case solana = "solana"
    }

    /**
     Derive wallet identifier
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter supplyWalletRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deriveWalletIdentifier(blockchain: Blockchain_deriveWalletIdentifier, supplyWalletRequest: SupplyWalletRequest, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: WalletIdentifiers?, _ error: Error?) -> Void)) -> RequestTask {
        return deriveWalletIdentifierWithRequestBuilder(blockchain: blockchain, supplyWalletRequest: supplyWalletRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Derive wallet identifier
     - POST /{blockchain}/wallet/identifier
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/derive-wallet-identifier\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Derive the identifier for a wallet.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter supplyWalletRequest: (body)  
     - returns: RequestBuilder<WalletIdentifiers> 
     */
    open class func deriveWalletIdentifierWithRequestBuilder(blockchain: Blockchain_deriveWalletIdentifier, supplyWalletRequest: SupplyWalletRequest) -> RequestBuilder<WalletIdentifiers> {
        var localVariablePath = "/{blockchain}/wallet/identifier"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: supplyWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<WalletIdentifiers>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_generatePrivateKey: String, CaseIterable {
        case avalanche = "avalanche"
        case binanceSmartChain = "binance_smart_chain"
        case ethereum = "ethereum"
        case near = "near"
        case solana = "solana"
    }

    /**
     Generate private key
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func generatePrivateKey(blockchain: Blockchain_generatePrivateKey, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralGeneratePrivateKeyResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return generatePrivateKeyWithRequestBuilder(blockchain: blockchain).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Generate private key
     - POST /{blockchain}/wallet/generate/private_key
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a wallet.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - returns: RequestBuilder<GeneralGeneratePrivateKeyResponse> 
     */
    open class func generatePrivateKeyWithRequestBuilder(blockchain: Blockchain_generatePrivateKey) -> RequestBuilder<GeneralGeneratePrivateKeyResponse> {
        var localVariablePath = "/{blockchain}/wallet/generate/private_key"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralGeneratePrivateKeyResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_generateSeedPhrase: String, CaseIterable {
        case avalanche = "avalanche"
        case binanceSmartChain = "binance_smart_chain"
        case ethereum = "ethereum"
        case near = "near"
        case solana = "solana"
    }

    /**
     Generate seed phrase
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generateSeedPhraseRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func generateSeedPhrase(blockchain: Blockchain_generateSeedPhrase, generateSeedPhraseRequest: GenerateSeedPhraseRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralSecretPhrase?, _ error: Error?) -> Void)) -> RequestTask {
        return generateSeedPhraseWithRequestBuilder(blockchain: blockchain, generateSeedPhraseRequest: generateSeedPhraseRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Generate seed phrase
     - POST /{blockchain}/wallet/generate/secret_recovery_phrase
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a seed phrase for a wallet.   `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generateSeedPhraseRequest: (body)  (optional)
     - returns: RequestBuilder<GeneralSecretPhrase> 
     */
    open class func generateSeedPhraseWithRequestBuilder(blockchain: Blockchain_generateSeedPhrase, generateSeedPhraseRequest: GenerateSeedPhraseRequest? = nil) -> RequestBuilder<GeneralSecretPhrase> {
        var localVariablePath = "/{blockchain}/wallet/generate/secret_recovery_phrase"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generateSeedPhraseRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralSecretPhrase>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_getAirdrop: String, CaseIterable {
        case ethereum = "ethereum"
        case solana = "solana"
    }

    /**
     Get an airdrop
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalAirdropRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAirdrop(blockchain: Blockchain_getAirdrop, generalAirdropRequest: GeneralAirdropRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralTransactionMadeResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getAirdropWithRequestBuilder(blockchain: blockchain, generalAirdropRequest: generalAirdropRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get an airdrop
     - POST /{blockchain}/wallet/airdrop
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      - Ethereum: Receive an airdrop of 0.001 ETH on Ropsten (not real ETH).  - Solana: Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015, which is the minimum amount of SOL you need to mint an NFT and then transfer it to another wallet.  `Cost: 0 Credit` (Free) (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalAirdropRequest: (body)  (optional)
     - returns: RequestBuilder<GeneralTransactionMadeResponse> 
     */
    open class func getAirdropWithRequestBuilder(blockchain: Blockchain_getAirdrop, generalAirdropRequest: GeneralAirdropRequest? = nil) -> RequestBuilder<GeneralTransactionMadeResponse> {
        var localVariablePath = "/{blockchain}/wallet/airdrop"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generalAirdropRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralTransactionMadeResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_getBalance: String, CaseIterable {
        case ethereum = "ethereum"
        case solana = "solana"
    }

    /**
     Get wallet's balance of X
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalBalanceRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getBalance(blockchain: Blockchain_getBalance, generalBalanceRequest: GeneralBalanceRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralBalanceResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return getBalanceWithRequestBuilder(blockchain: blockchain, generalBalanceRequest: generalBalanceRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get wallet's balance of X
     - POST /{blockchain}/wallet/balance
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in the native blockchain currency (e.g., ETH, SOL) or any token (e.g., ERC-20, NFTs, SPL, etc.).  To get the balance of a specific token, supply the `token_blockchain_identifier` of the token.   You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `token_blockchain_identifier` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT.  `Cost: 0.25 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalBalanceRequest: (body)  (optional)
     - returns: RequestBuilder<GeneralBalanceResponse> 
     */
    open class func getBalanceWithRequestBuilder(blockchain: Blockchain_getBalance, generalBalanceRequest: GeneralBalanceRequest? = nil) -> RequestBuilder<GeneralBalanceResponse> {
        var localVariablePath = "/{blockchain}/wallet/balance"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generalBalanceRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralBalanceResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     * enum for parameter blockchain
     */
    public enum Blockchain_transfer: String, CaseIterable {
        case ethereum = "ethereum"
        case solana = "solana"
    }

    /**
     Transfer crypto, a token, or an NFT to another wallet
     
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalTransferRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func transfer(blockchain: Blockchain_transfer, generalTransferRequest: GeneralTransferRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneralTransactionResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return transferWithRequestBuilder(blockchain: blockchain, generalTransferRequest: generalTransferRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Transfer crypto, a token, or an NFT to another wallet
     - POST /{blockchain}/wallet/transfer
     - <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/transfer-crypto-token-or-nft\" target=\"_blank\">See transfer ETH/SOL/crypto example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/blockchain-api/tree/main/examples/wallet/transfer-crypto-token-or-nft\" target=\"_blank\">See transfer NFT/token example (Python, JavaScript)</a>.  This is a powerful function. It might be slightly confusing because there are several optional parameters, so take some time to review it.   This function can send - The native currency of the selected blockchain (e.g., SOL, ETH, BNB, etc.) - A token (e.g., an SPL token, ERC-20 token, etc.) - An NFT  You can sign and submit the transaction for confirmation; and you can select to simply return the compiled transaction so that you can submit it to the user for signing (e.g., via Phantom or Metamask; no private keys required in this case).  If you're transferring an NFT or a token, supply its respective `token_blockchain_identifier`.  SENDER: Note that the wallet information is used to authorize the sending of the tokens and identifies the source of the tokens. If `return_compiled_transaction = false`, we sign and submit the transaction (`wallet` is required in this case; do not provide a value for `sender_blockchain_identifier`). If `return_compiled_transaction = true`, we compile the transaction (`sender_blockchain_identifier` is required in this case; do not provide `wallet`).  RECIPIENT: `recipient_blockchain_identifier` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction (if you want us to sign and submitting it).  FEE_PAYER (Solana only): The fee payer of the transaction defaults to `wallet` (or `sender_blockchain_identifier`). To set a different fee payer, provide a value for `fee_payer_wallet`.  `Cost: 2 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter blockchain: (path) The blockchain you want to use  
     - parameter generalTransferRequest: (body)  (optional)
     - returns: RequestBuilder<GeneralTransactionResponse> 
     */
    open class func transferWithRequestBuilder(blockchain: Blockchain_transfer, generalTransferRequest: GeneralTransferRequest? = nil) -> RequestBuilder<GeneralTransactionResponse> {
        var localVariablePath = "/{blockchain}/wallet/transfer"
        let blockchainPreEscape = "\(blockchain.rawValue)"
        let blockchainPostEscape = blockchainPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{blockchain}", with: blockchainPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: generalTransferRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneralTransactionResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}