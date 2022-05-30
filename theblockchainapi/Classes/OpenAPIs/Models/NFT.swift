//
// NFT.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NFT: Codable, JSONEncodable, Hashable {

    public var data: NFTData?
    public var isMutable: Bool?
    /** The public key address of the NFT  */
    public var mint: String?
    public var primarySaleHappened: Bool?
    /** A public key address that is usually that of the person who minted the NFT  */
    public var updateAuthority: String?
    public var sellerFeeBasisPoints: Double?
    public var mintSecretRecoveryPhrase: String?
    public var explorerUrl: String?
    /** The metadata account of the NFT  */
    public var metadataAccount: String?
    public var editionNonce: Double?
    public var tokenStandard: Double?
    public var collection: NFTCollection?
    public var uses: Double?

    public init(data: NFTData? = nil, isMutable: Bool? = nil, mint: String? = nil, primarySaleHappened: Bool? = nil, updateAuthority: String? = nil, sellerFeeBasisPoints: Double? = nil, mintSecretRecoveryPhrase: String? = nil, explorerUrl: String? = nil, metadataAccount: String? = nil, editionNonce: Double? = nil, tokenStandard: Double? = nil, collection: NFTCollection? = nil, uses: Double? = nil) {
        self.data = data
        self.isMutable = isMutable
        self.mint = mint
        self.primarySaleHappened = primarySaleHappened
        self.updateAuthority = updateAuthority
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.mintSecretRecoveryPhrase = mintSecretRecoveryPhrase
        self.explorerUrl = explorerUrl
        self.metadataAccount = metadataAccount
        self.editionNonce = editionNonce
        self.tokenStandard = tokenStandard
        self.collection = collection
        self.uses = uses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case isMutable = "is_mutable"
        case mint
        case primarySaleHappened = "primary_sale_happened"
        case updateAuthority = "update_authority"
        case sellerFeeBasisPoints = "seller_fee_basis_points"
        case mintSecretRecoveryPhrase = "mint_secret_recovery_phrase"
        case explorerUrl = "explorer_url"
        case metadataAccount = "metadata_account"
        case editionNonce = "edition_nonce"
        case tokenStandard = "token_standard"
        case collection
        case uses
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(isMutable, forKey: .isMutable)
        try container.encodeIfPresent(mint, forKey: .mint)
        try container.encodeIfPresent(primarySaleHappened, forKey: .primarySaleHappened)
        try container.encodeIfPresent(updateAuthority, forKey: .updateAuthority)
        try container.encodeIfPresent(sellerFeeBasisPoints, forKey: .sellerFeeBasisPoints)
        try container.encodeIfPresent(mintSecretRecoveryPhrase, forKey: .mintSecretRecoveryPhrase)
        try container.encodeIfPresent(explorerUrl, forKey: .explorerUrl)
        try container.encodeIfPresent(metadataAccount, forKey: .metadataAccount)
        try container.encodeIfPresent(editionNonce, forKey: .editionNonce)
        try container.encodeIfPresent(tokenStandard, forKey: .tokenStandard)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encodeIfPresent(uses, forKey: .uses)
    }
}

