//
// BalanceRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BalanceRequest: Codable, JSONEncodable, Hashable {

    public enum Unit: String, Codable, CaseIterable {
        case lamport = "lamport"
        case sol = "sol"
    }
    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The public key address of the wallet */
    public var publicKey: String
    /** If you are retrieving the SOL balance, you can select whether to retrieve this in SOL or Lamport units (1 SOL = 1e9 Lamports). */
    public var unit: Unit? = .lamport
    public var network: Network? = .devnet
    /** The mint address of the SPL token or NFT. If not provided, the balance returned is in SOL. Make sure to use the correct network.  You can see the mint addresses of popular SPL tokens <a href=\"https://raw.githubusercontent.com/solana-labs/token-list/main/src/tokens/solana.tokenlist.json\" target=\"_blank\">here</a>.  Some example mint addresses of SPL tokens: - USDC: EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v - Mango: MangoCzJ36AjZyKwVj3VnYU4GTonjfVEnJmvvWaxLac - Serum: SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt - Raydium: 4k3Dyjzvzp8eMZWUXbBCjEvwSkkk59S5iCNLY3QrkX6R - wSOL: So11111111111111111111111111111111111111112 - ATLAS: ATLASXmbPQxBUYbxPsV97usA3fPQYEqzQBUHgiFCUsXx */
    public var mintAddress: String? = "null"

    public init(publicKey: String, unit: Unit? = .lamport, network: Network? = .devnet, mintAddress: String? = "null") {
        self.publicKey = publicKey
        self.unit = unit
        self.network = network
        self.mintAddress = mintAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case publicKey = "public_key"
        case unit
        case network
        case mintAddress = "mint_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(publicKey, forKey: .publicKey)
        try container.encodeIfPresent(unit, forKey: .unit)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(mintAddress, forKey: .mintAddress)
    }
}

