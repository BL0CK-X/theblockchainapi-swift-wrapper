//
// GetCandyDetailsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetCandyDetailsResponse: Codable, Hashable {

    /** The uuid of the candy machine */
    public var uuid: String?
    /** The unix timestamp of the start date of the candy machine  */
    public var goLiveDate: Double?
    /** The price in Lamports for minting an NFT from the candy machine. 1e9 Lamport  = 1 SOL  */
    public var price: Double?
    /** The number of NFTs available for mint from the candy machine  */
    public var itemsAvailable: Double?
    /** The number of NFTs minted already from the candy machine  */
    public var itemsRedeemed: Double?
    public var tokenMint: String?
    /** The configuration public key address of the candy machine  */
    public var configAddress: String?
    /** The public key address of the wallet that recevies the proceeds from NFT mints  */
    public var wallet: String?
    public var bump: Double?

    public init(uuid: String? = nil, goLiveDate: Double? = nil, price: Double? = nil, itemsAvailable: Double? = nil, itemsRedeemed: Double? = nil, tokenMint: String? = nil, configAddress: String? = nil, wallet: String? = nil, bump: Double? = nil) {
        self.uuid = uuid
        self.goLiveDate = goLiveDate
        self.price = price
        self.itemsAvailable = itemsAvailable
        self.itemsRedeemed = itemsRedeemed
        self.tokenMint = tokenMint
        self.configAddress = configAddress
        self.wallet = wallet
        self.bump = bump
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uuid
        case goLiveDate = "go_live_date"
        case price
        case itemsAvailable = "items_available"
        case itemsRedeemed = "items_redeemed"
        case tokenMint = "token_mint"
        case configAddress = "config_address"
        case wallet
        case bump
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uuid, forKey: .uuid)
        try container.encodeIfPresent(goLiveDate, forKey: .goLiveDate)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(itemsAvailable, forKey: .itemsAvailable)
        try container.encodeIfPresent(itemsRedeemed, forKey: .itemsRedeemed)
        try container.encodeIfPresent(tokenMint, forKey: .tokenMint)
        try container.encodeIfPresent(configAddress, forKey: .configAddress)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(bump, forKey: .bump)
    }
}
