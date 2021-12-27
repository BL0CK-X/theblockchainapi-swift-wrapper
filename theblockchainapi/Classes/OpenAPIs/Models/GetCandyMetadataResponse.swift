//
// GetCandyMetadataResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetCandyMetadataResponse: Codable, Hashable {

    /** The update authority of the candy machine */
    public var authority: String?
    public var bump: Double?
    /** The ID of the candy machine  */
    public var candyMachineId: String?
    /** The configuration public key address of the candy machine  */
    public var configAddress: String?
    public var creators: [GetCandyMetadataResponseCreators]?
    /** The unix timestamp of the start date of the candy machine  */
    public var goLiveDate: Double?
    public var isMutable: Bool?
    /** The number of NFTs available for mint from the candy machine  */
    public var itemsAvailable: Double?
    /** The number of NFTs minted already from the candy machine  */
    public var itemsRedeemed: Double?
    public var maxNumberOfLines: Double?
    public var maxSupply: Double?
    /** The price in Lamports for minting an NFT from the candy machine. 1e9 Lamport  = 1 SOL  */
    public var price: Double?
    public var retainAuthority: Bool?
    /** The royalty the creators receive on each sale after the primary sale (the initial minting) (denominated in basis points (e.g., 75 basis points = 0.75%))  */
    public var sellerFeeBasisPoints: Double?
    public var symbol: String?
    public var tokenMint: String?
    /** The uuid of the candy machine */
    public var uuid: String?
    /** The public key address of the wallet that recevies the proceeds from NFT mints  */
    public var wallet: String?

    public init(authority: String? = nil, bump: Double? = nil, candyMachineId: String? = nil, configAddress: String? = nil, creators: [GetCandyMetadataResponseCreators]? = nil, goLiveDate: Double? = nil, isMutable: Bool? = nil, itemsAvailable: Double? = nil, itemsRedeemed: Double? = nil, maxNumberOfLines: Double? = nil, maxSupply: Double? = nil, price: Double? = nil, retainAuthority: Bool? = nil, sellerFeeBasisPoints: Double? = nil, symbol: String? = nil, tokenMint: String? = nil, uuid: String? = nil, wallet: String? = nil) {
        self.authority = authority
        self.bump = bump
        self.candyMachineId = candyMachineId
        self.configAddress = configAddress
        self.creators = creators
        self.goLiveDate = goLiveDate
        self.isMutable = isMutable
        self.itemsAvailable = itemsAvailable
        self.itemsRedeemed = itemsRedeemed
        self.maxNumberOfLines = maxNumberOfLines
        self.maxSupply = maxSupply
        self.price = price
        self.retainAuthority = retainAuthority
        self.sellerFeeBasisPoints = sellerFeeBasisPoints
        self.symbol = symbol
        self.tokenMint = tokenMint
        self.uuid = uuid
        self.wallet = wallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case authority
        case bump
        case candyMachineId = "candy_machine_id"
        case configAddress = "config_address"
        case creators
        case goLiveDate = "go_live_date"
        case isMutable = "is_mutable"
        case itemsAvailable = "items_available"
        case itemsRedeemed = "items_redeemed"
        case maxNumberOfLines = "max_number_of_lines"
        case maxSupply = "max_supply"
        case price
        case retainAuthority = "retain_authority"
        case sellerFeeBasisPoints = "seller_fee_basis_points"
        case symbol
        case tokenMint = "token_mint"
        case uuid
        case wallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(authority, forKey: .authority)
        try container.encodeIfPresent(bump, forKey: .bump)
        try container.encodeIfPresent(candyMachineId, forKey: .candyMachineId)
        try container.encodeIfPresent(configAddress, forKey: .configAddress)
        try container.encodeIfPresent(creators, forKey: .creators)
        try container.encodeIfPresent(goLiveDate, forKey: .goLiveDate)
        try container.encodeIfPresent(isMutable, forKey: .isMutable)
        try container.encodeIfPresent(itemsAvailable, forKey: .itemsAvailable)
        try container.encodeIfPresent(itemsRedeemed, forKey: .itemsRedeemed)
        try container.encodeIfPresent(maxNumberOfLines, forKey: .maxNumberOfLines)
        try container.encodeIfPresent(maxSupply, forKey: .maxSupply)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(retainAuthority, forKey: .retainAuthority)
        try container.encodeIfPresent(sellerFeeBasisPoints, forKey: .sellerFeeBasisPoints)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(tokenMint, forKey: .tokenMint)
        try container.encodeIfPresent(uuid, forKey: .uuid)
        try container.encodeIfPresent(wallet, forKey: .wallet)
    }
}
