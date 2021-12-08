//
// NFTMintRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NFTMintRequest: Codable, Hashable {

    public enum NftUploadMethod: String, Codable, CaseIterable {
        case s3 = "S3"
        case link = "LINK"
    }
    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The twelve word phrase that can be used to derive many public key addresses. To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase. See our Security section <a href=\"#section/Security\">here</a>. */
    public var secretRecoveryPhrase: String
    /** Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  We use \"m/44/501/0/0\" by default, if it is not provided. This is the path that the Phantom and Sollet wallets use. If you provide the empty string \"\" as the value for the derivation path, then we will use the Solana CLI default value. The SolFlare recommended path is \"m/44/501/0\".  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ...). This is how Phantom generates more wallets.  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>. */
    public var derivationPath: String? = "m/44/501/0/0"
    /** An optional string used to generate an address. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. Limited to 500 characters.  */
    public var passphrase: String? = ""
    /** The name of the token. Limited to 32 characters. Stored on the blockchain. */
    public var nftName: String? = ""
    /** The symbol of the token. Limited to 10 characters. Stored on the blockchain. */
    public var nftSymbol: String? = ""
    /** The description of the token. Limited to 2000 characters. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_description is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL.  */
    public var nftDescription: String? = ""
    /** The URL you provided. Limited to 200 characters. This does not need to be a valid URL. Whether or not this is  stored on the blockchain depends on which upload method you choose. If you choose LINK, then this is stored on the  blockchain directly. If you choose S3, then this link is embedded in a public S3 text file that also contains the metadata, the name,  the symbol, and the description of the NFT.  */
    public var nftUrl: String? = ""
    /** Any data you provide. Must be a string and properly encoded json. Will be viewable on S3. Limited to 2000 bytes. Not stored on the blockchain.  This is stored in S3 in a bucket we own, and the link to that file is stored on the blockchain.  If you provide your own link, the link is also stored in that S3 file, which is publicly accessible. However, if you choose the NFT upload method \"LINK\" instead of \"S3\", then we upload the link you  provide for nft_url directly to the blockchain, and S3 is not used at all. Thus, when you provide the \"LINK\" option, the value nft_metadata is ignored and not used. The Metaplex API does not provide functionality to store any data about your NFT besides a URL.  */
    public var nftMetadata: String? = "{}"
    /** When you choose S3, all of the nft_description, nft_name, nft_symbol, nft_metadata, and nft_url are put into a json dictionary and uploaded to S3 as a text file.  This is uploaded to an AWS S3 bucket we own, and is an option we provide at no charge. The S3 link to this file is stored on the NFT on the blockchain.   When you choose LINK, the nft_url you provide is stored on the blockchain, and the nft_metadata and nft_description are ignored and not stored anywhere.   */
    public var nftUploadMethod: NftUploadMethod? = .s3
    /** Indicates whether or not the NFT created is mutable. If mutable, the NFT can be updated later. Once set to immutable, the NFT is unable to be changed.  */
    public var isMutable: Bool? = true
    /** Whether or not the NFT is a master edition NFT. Saves about 0.001 SOL in transaction costs when set to false.  */
    public var isMasterEdition: Bool? = true
    /** Valid values from 0 to 10000. Must be an integer.  Represents the number of basis points that the seller receives as a fee upon sale.  E.g., 100 indicates a 1% seller fee. Seller does not receive a fee when \"primary_sale_has_happened\" is set to true.  Will be set to false after first sale has occurred.  */
    public var sellerFeeBasisPoints: Double? = 0
    /** A JSON encoded string representing an array / list.  The designated creators of the NFT. Length of the creator list must match length of the list of share.  Valid lengths of the list range from 1 to 5. Each item in the list must be a valid public key address.    Only the public key corresponding to the seed phrase provided will be marked as verified. Any other creators supplied will be marked as unverified.  */
    public var creators: [String]?
    /** A JSON encoded string representing an array / list.  The share of the royalty that each creator gets. Valid values range from 0 to 100.  Sum of the values must equal 100.  Only integer value accepted. Length of the share list must match length of the list of creators.  */
    public var share: [Int]?
    /** This determines which network you choose to run the API calls on. We recommend first testing on the devnet, because minting an NFT costs a little above 0.01 SOL, which is about $1.60 at the time of this writing.  When you run on the mainnet-beta, each successful call will deduct approximately that much. When you run on the devnet, that amount is deducted from a simulated amount, so you are not paying with real SOL. To get SOL on the devnet,   airdrop SOL to this address using the CLI. Keep in mind that you can only do this every so often. If you are rate-limited, consider using a VPN and trying again, or just waiting. To get SOL on the mainnet-beta, you    must transfer real SOL to this account from another wallet (e.g., from another wallet you own, from an exchange, etc.). We hope to make this process easier in the future, and if you have any suggestions, please add them    as an issue on our <a href=\"https://github.com/BL0CK-X/the-blockchain-api\" target=\"_blank\">GitHub repository</a> for the API. To get a fee estimate, make a GET requests to the <a href=\"#tag/Solana-NFT/paths/~1solana~1nft~1mint~1fee/get\">v1/solana/nft/mint/fee endpoint</a> (details in sidebar).  */
    public var network: Network? = .devnet

    public init(secretRecoveryPhrase: String, derivationPath: String? = "m/44/501/0/0", passphrase: String? = "", nftName: String? = "", nftSymbol: String? = "", nftDescription: String? = "", nftUrl: String? = "", nftMetadata: String? = "{}", nftUploadMethod: NftUploadMethod? = .s3, isMutable: Bool? = true, isMasterEdition: Bool? = true, sellerFeeBasisPoints: Double? = 0, creators: [String]? = nil, share: [Int]? = nil, network: Network? = .devnet) {
        self.secretRecoveryPhrase = secretRecoveryPhrase
        self.derivationPath = derivationPath
        self.passphrase = passphrase
        self.nftName = nftName
        self.nftSymbol = nftSymbol
        self.nftDescription = nftDescription
        self.nftUrl = nftUrl
        self.nftMetadata = nftMetadata
        self.nftUploadMethod = nftUploadMethod
        self.isMutable = isMutable
        self.isMasterEdition = isMasterEdition
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.creators = creators
        self.share = share
        self.network = network
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case secretRecoveryPhrase = "secret_recovery_phrase"
        case derivationPath = "derivation_path"
        case passphrase
        case nftName = "nft_name"
        case nftSymbol = "nft_symbol"
        case nftDescription = "nft_description"
        case nftUrl = "nft_url"
        case nftMetadata = "nft_metadata"
        case nftUploadMethod = "nft_upload_method"
        case isMutable = "is_mutable"
        case isMasterEdition = "is_master_edition"
        case sellerFeeBasisPoints = "seller_fee_basis_points"
        case creators
        case share
        case network
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(secretRecoveryPhrase, forKey: .secretRecoveryPhrase)
        try container.encodeIfPresent(derivationPath, forKey: .derivationPath)
        try container.encodeIfPresent(passphrase, forKey: .passphrase)
        try container.encodeIfPresent(nftName, forKey: .nftName)
        try container.encodeIfPresent(nftSymbol, forKey: .nftSymbol)
        try container.encodeIfPresent(nftDescription, forKey: .nftDescription)
        try container.encodeIfPresent(nftUrl, forKey: .nftUrl)
        try container.encodeIfPresent(nftMetadata, forKey: .nftMetadata)
        try container.encodeIfPresent(nftUploadMethod, forKey: .nftUploadMethod)
        try container.encodeIfPresent(isMutable, forKey: .isMutable)
        try container.encodeIfPresent(isMasterEdition, forKey: .isMasterEdition)
        try container.encodeIfPresent(sellerFeeBasisPoints, forKey: .sellerFeeBasisPoints)
        try container.encodeIfPresent(creators, forKey: .creators)
        try container.encodeIfPresent(share, forKey: .share)
        try container.encodeIfPresent(network, forKey: .network)
    }
}

