//
// TokenMetadataResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TokenMetadataResponse: Codable, JSONEncodable, Hashable {

    /** The symbol of the coin  */
    public var symbol: String?
    /** The name of the coin  */
    public var name: String?
    public var decimals: Double?
    /** The `mint_authority` (Solana) or `master_minter` (Ethereum)  */
    public var minterBlockchainIdentifier: String?
    public var totalSupply: String?

    public init(symbol: String? = nil, name: String? = nil, decimals: Double? = nil, minterBlockchainIdentifier: String? = nil, totalSupply: String? = nil) {
        self.symbol = symbol
        self.name = name
        self.decimals = decimals
        self.minterBlockchainIdentifier = minterBlockchainIdentifier
        self.totalSupply = totalSupply
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case symbol
        case name
        case decimals
        case minterBlockchainIdentifier = "minter_blockchain_identifier"
        case totalSupply = "total_supply"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(decimals, forKey: .decimals)
        try container.encodeIfPresent(minterBlockchainIdentifier, forKey: .minterBlockchainIdentifier)
        try container.encodeIfPresent(totalSupply, forKey: .totalSupply)
    }
}
