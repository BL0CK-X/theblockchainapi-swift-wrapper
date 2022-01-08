//
// SolanaWalletAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class SolanaWalletAPI {

    /**
     Derive an associated token account address
     
     - parameter publicKey: (path) The public key of the wallet 
     - parameter mintAddress: (path) The mint address of the token (either SPL or NFT) 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaDeriveAssociatedTokenAccountAddress(publicKey: String, mintAddress: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: ATAResponse?, _ error: Error?) -> Void)) {
        solanaDeriveAssociatedTokenAccountAddressWithRequestBuilder(publicKey: publicKey, mintAddress: mintAddress).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Derive an associated token account address
     - GET /solana/wallet/{public_key}/associated_token_account/{mint_address}
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-associated-token-account-address\" target=\"_blank\">See example (Python, JavaScript)</a>.      *Each wallet can own tokens, but in Solana, each token is actually held by an <a href=\"https://spl.solana.com/associated-token-account\" target=\"_blank\">associated token account</a> (ATA), which is an account specific for a token owned by the wallet. When you transfer an SPL token, such as Serum, or transfer an NFT, you're transfering from an ATA you own to another person's ATA for that specific token. With this endpoint, you can derive an associated token address given a wallet and a token address.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter publicKey: (path) The public key of the wallet 
     - parameter mintAddress: (path) The mint address of the token (either SPL or NFT) 
     - returns: RequestBuilder<ATAResponse> 
     */
    open class func solanaDeriveAssociatedTokenAccountAddressWithRequestBuilder(publicKey: String, mintAddress: String) -> RequestBuilder<ATAResponse> {
        var localVariablePath = "/solana/wallet/{public_key}/associated_token_account/{mint_address}"
        let publicKeyPreEscape = "\(APIHelper.mapValueToPathItem(publicKey))"
        let publicKeyPostEscape = publicKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{public_key}", with: publicKeyPostEscape, options: .literal, range: nil)
        let mintAddressPreEscape = "\(APIHelper.mapValueToPathItem(mintAddress))"
        let mintAddressPostEscape = mintAddressPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{mint_address}", with: mintAddressPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ATAResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Derive private key
     
     - parameter getPublicKeyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaDerivePrivateKey(getPublicKeyRequest: GetPublicKeyRequest, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneratePrivateKey?, _ error: Error?) -> Void)) {
        solanaDerivePrivateKeyWithRequestBuilder(getPublicKeyRequest: getPublicKeyRequest).execute(apiResponseQueue) { result in
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
     - POST /solana/wallet/private_key
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a private key array and a base58-encoded private key given wallet authentication.  A wallet is defined by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path. Thus, with a single secret recovery phrase, you can generate many public keys. If you are just starting, just supply the secret recovery phrase you generated with the Solana Wallet Secret Recovery Phrase endpoint.*  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter getPublicKeyRequest: (body)  
     - returns: RequestBuilder<GeneratePrivateKey> 
     */
    open class func solanaDerivePrivateKeyWithRequestBuilder(getPublicKeyRequest: GetPublicKeyRequest) -> RequestBuilder<GeneratePrivateKey> {
        let localVariablePath = "/solana/wallet/private_key"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getPublicKeyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneratePrivateKey>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Derive public key
     
     - parameter getPublicKeyRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaDerivePublicKey(getPublicKeyRequest: GetPublicKeyRequest, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: PublicKey?, _ error: Error?) -> Void)) {
        solanaDerivePublicKeyWithRequestBuilder(getPublicKeyRequest: getPublicKeyRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Derive public key
     - POST /solana/wallet/public_key
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/derive-public-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Returns a public key given wallet authentication.  A wallet is identified by a public key. A public key is derived from a combination of seed phrase, derivation path, and passphrase. Changing any *one* of these three will change the public key output.   It can also be derived from a private key.  *You can generate a unique public key with each combination of secret recovery phrase, passphrase, and derivation path; or from a private key. Thus, with a single secret recovery phrase, you can generate many public keys; however, with a private key, you can only generate one public key. If you are just starting, generate a <a href=\"#operation/solanaGenerateSecretRecoveryPhrase\">secret recovery phrase</a> or <a href=\"#operation/solanaGeneratePrivateKey\">private key</a>.  *If you are trying to get a public key that already exists (e.g., created in the Phantom wallet), make sure you use the correct derivation path and passphrase; or just use the private key. To read more about that, see the descriptions of those parameters below.*  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter getPublicKeyRequest: (body)  
     - returns: RequestBuilder<PublicKey> 
     */
    open class func solanaDerivePublicKeyWithRequestBuilder(getPublicKeyRequest: GetPublicKeyRequest) -> RequestBuilder<PublicKey> {
        let localVariablePath = "/solana/wallet/public_key"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: getPublicKeyRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PublicKey>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Generate private key
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGeneratePrivateKey(apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: GeneratePrivateKey?, _ error: Error?) -> Void)) {
        solanaGeneratePrivateKeyWithRequestBuilder().execute(apiResponseQueue) { result in
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
     - POST /solana/wallet/generate/private_key
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-private-key\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a private key for a Solana wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<GeneratePrivateKey> 
     */
    open class func solanaGeneratePrivateKeyWithRequestBuilder() -> RequestBuilder<GeneratePrivateKey> {
        let localVariablePath = "/solana/wallet/generate/private_key"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeneratePrivateKey>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Generate secret phrase
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGenerateSecretRecoveryPhrase(apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: SecretPhrase?, _ error: Error?) -> Void)) {
        solanaGenerateSecretRecoveryPhraseWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Generate secret phrase
     - POST /solana/wallet/generate/secret_recovery_phrase
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/generate-secret-phrase\" target=\"_blank\">See examples (Python, JavaScript)</a>.  Use this endpoint to securely and randomly generate a secret recovery phrase for a Solana wallet.   `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - returns: RequestBuilder<SecretPhrase> 
     */
    open class func solanaGenerateSecretRecoveryPhraseWithRequestBuilder() -> RequestBuilder<SecretPhrase> {
        let localVariablePath = "/solana/wallet/generate/secret_recovery_phrase"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<SecretPhrase>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get an airdrop on devnet
     
     - parameter airdropRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGetAirdrop(airdropRequest: AirdropRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: TransferResponse?, _ error: Error?) -> Void)) {
        solanaGetAirdropWithRequestBuilder(airdropRequest: airdropRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get an airdrop on devnet
     - POST /solana/wallet/airdrop
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-airdrop\" target=\"_blank\">See examples (Python, JavaScript)</a>.      Use this endpoint to get an airdrop of SOL on the devnet (not real SOL). Amount of 0.015,  which is the minimum amount of SOL you need to mint a Metaplex NFT and then transfer it to another wallet.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter airdropRequest: (body)  (optional)
     - returns: RequestBuilder<TransferResponse> 
     */
    open class func solanaGetAirdropWithRequestBuilder(airdropRequest: AirdropRequest? = nil) -> RequestBuilder<TransferResponse> {
        let localVariablePath = "/solana/wallet/airdrop"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: airdropRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransferResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get wallet's balance in SOL or any SPL
     
     - parameter balanceRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGetBalance(balanceRequest: BalanceRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: BalanceResponse?, _ error: Error?) -> Void)) {
        solanaGetBalanceWithRequestBuilder(balanceRequest: balanceRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get wallet's balance in SOL or any SPL
     - POST /solana/wallet/balance
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-balance\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the balance of a wallet in SOL or any SPL token.  To get the balance of an SPL token, supply the `mint_address` of the SPL token. The list of SPL tokens can be viewed <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  You can also use this endpoint to see whether or not a person owns an NFT. Just supply the `mint_address` of the NFT. A balance of \"1\" means the person owns the NFT, and a balance of \"0\" means the person does not own the NFT. This works in most cases, but we are aware of one edge case where a balance of \"0\" will show up for a person who is actually the owner of the NFT. We just recommend using the <a href=\"#operation/solanaGetNFTOwner\">getNFTOwner</a> endpoint and comparing that output to the expected address.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter balanceRequest: (body)  (optional)
     - returns: RequestBuilder<BalanceResponse> 
     */
    open class func solanaGetBalanceWithRequestBuilder(balanceRequest: BalanceRequest? = nil) -> RequestBuilder<BalanceResponse> {
        let localVariablePath = "/solana/wallet/balance"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: balanceRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BalanceResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get address's NFTs
     
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account whose list of owned NFTs you want to get 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGetNFTsBelongingToWallet(network: String, publicKey: String, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: ListNFTsResponse?, _ error: Error?) -> Void)) {
        solanaGetNFTsBelongingToWalletWithRequestBuilder(network: network, publicKey: publicKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get address's NFTs
     - GET /solana/wallet/{network}/{public_key}/nfts
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-nfts\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the NFTs that belong to a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account whose list of owned NFTs you want to get 
     - returns: RequestBuilder<ListNFTsResponse> 
     */
    open class func solanaGetNFTsBelongingToWalletWithRequestBuilder(network: String, publicKey: String) -> RequestBuilder<ListNFTsResponse> {
        var localVariablePath = "/solana/wallet/{network}/{public_key}/nfts"
        let networkPreEscape = "\(APIHelper.mapValueToPathItem(network))"
        let networkPostEscape = networkPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{network}", with: networkPostEscape, options: .literal, range: nil)
        let publicKeyPreEscape = "\(APIHelper.mapValueToPathItem(publicKey))"
        let publicKeyPostEscape = publicKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{public_key}", with: publicKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ListNFTsResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Get address's tokens and respective balances
     
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account whose list of owned NFTs you want to get 
     - parameter includeNfts: (query) Whether or not to include NFTs in the response (optional, default to false)
     - parameter includeZeroBalanceHoldings: (query) Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaGetTokensBelongingToWallet(network: String, publicKey: String, includeNfts: Bool? = nil, includeZeroBalanceHoldings: Bool? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: [AnyCodable]?, _ error: Error?) -> Void)) {
        solanaGetTokensBelongingToWalletWithRequestBuilder(network: network, publicKey: publicKey, includeNfts: includeNfts, includeZeroBalanceHoldings: includeZeroBalanceHoldings).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get address's tokens and respective balances
     - GET /solana/wallet/{network}/{public_key}/tokens
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/get-wallet-token-holdings\" target=\"_blank\">See examples (Python, JavaScript)</a>.      See the token holdings of a given public key address  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter network: (path) The network ID (devnet, mainnet-beta) 
     - parameter publicKey: (path) The public key of the account whose list of owned NFTs you want to get 
     - parameter includeNfts: (query) Whether or not to include NFTs in the response (optional, default to false)
     - parameter includeZeroBalanceHoldings: (query) Whether or not to include holdings that have zero balance. This indicates that the wallet held this token or NFT in the past, but no longer holds it. (optional, default to false)
     - returns: RequestBuilder<[AnyCodable]> 
     */
    open class func solanaGetTokensBelongingToWalletWithRequestBuilder(network: String, publicKey: String, includeNfts: Bool? = nil, includeZeroBalanceHoldings: Bool? = nil) -> RequestBuilder<[AnyCodable]> {
        var localVariablePath = "/solana/wallet/{network}/{public_key}/tokens"
        let networkPreEscape = "\(APIHelper.mapValueToPathItem(network))"
        let networkPostEscape = networkPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{network}", with: networkPostEscape, options: .literal, range: nil)
        let publicKeyPreEscape = "\(APIHelper.mapValueToPathItem(publicKey))"
        let publicKeyPostEscape = publicKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{public_key}", with: publicKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include_nfts": includeNfts?.encodeToJSON(),
            "include_zero_balance_holdings": includeZeroBalanceHoldings?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[AnyCodable]>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Transfer SOL, a token, or an NFT to another address
     
     - parameter transferRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func solanaTransfer(transferRequest: TransferRequest? = nil, apiResponseQueue: DispatchQueue = theblockchainapiAPI.apiResponseQueue, completion: @escaping ((_ data: TransferResponse?, _ error: Error?) -> Void)) {
        solanaTransferWithRequestBuilder(transferRequest: transferRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Transfer SOL, a token, or an NFT to another address
     - POST /solana/wallet/transfer
     - <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-sol\" target=\"_blank\">See transfer SOL example (Python, JavaScript)</a>.  <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples/solana-wallet/transfer-nft\" target=\"_blank\">See transfer NFT example (can also be used for SPL token) (Python, JavaScript)</a>.  Transfer SOL, a token or an NFT to another address. If you're transferring an NFT, supply the `mint` (the address of the mint) for the `token_address`.  SENDER: Note that the wallet information (`secret_recovery_phrase`, `passphrase`, `derivation_path`) is used to authorize the sending of the tokens and identifies the source of the tokens.   RECEIVER: `recipient_address` identifies the receiver. This is entirely separate from the information used for the SENDER above. So, in this API call, there are two wallets involved, but only one (namely, the SENDER) is needed to authorize the transaction.  If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  `Cost: 1 Credit` (<a href=\"#section/Pricing\">See Pricing</a>)
     - API Key:
       - type: apiKey APIKeyID 
       - name: APIKeyID
     - API Key:
       - type: apiKey APISecretKey 
       - name: APISecretKey
     - parameter transferRequest: (body)  (optional)
     - returns: RequestBuilder<TransferResponse> 
     */
    open class func solanaTransferWithRequestBuilder(transferRequest: TransferRequest? = nil) -> RequestBuilder<TransferResponse> {
        let localVariablePath = "/solana/wallet/transfer"
        let localVariableURLString = theblockchainapiAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: transferRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TransferResponse>.Type = theblockchainapiAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
