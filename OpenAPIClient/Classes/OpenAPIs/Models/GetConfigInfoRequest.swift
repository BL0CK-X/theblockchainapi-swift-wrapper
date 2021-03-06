//
// GetConfigInfoRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetConfigInfoRequest: Codable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The config address of the candy machine.  If you don't know the address of a candy machine, you can use the \"Get Candy Machine Details\" endpoint to get the configuration public key address.  If you don't know the candy machine ID to call this endpoint, you can find it with the \"Get NFT's Candy Machine ID\" endpoint.  */
    public var configAddress: String
    public var network: Network? = .devnet

    public init(configAddress: String, network: Network? = .devnet) {
        self.configAddress = configAddress
        self.network = network
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case configAddress = "config_address"
        case network
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(configAddress, forKey: .configAddress)
        try container.encodeIfPresent(network, forKey: .network)
    }
}

