//
// GetCandyMachineIDRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetCandyMachineIDRequest: Codable, JSONEncodable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The address of the NFT. NOT the mint authority address */
    public var mintAddress: String
    public var network: Network? = .devnet

    public init(mintAddress: String, network: Network? = .devnet) {
        self.mintAddress = mintAddress
        self.network = network
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mintAddress = "mint_address"
        case network
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mintAddress, forKey: .mintAddress)
        try container.encodeIfPresent(network, forKey: .network)
    }
}

