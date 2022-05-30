//
// MintNFTRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MintNFTRequest: Codable, JSONEncodable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    public enum CandyMachineContractVersion: String, Codable, CaseIterable {
        case v1 = "v1"
        case v2 = "v2"
    }
    public var wallet: Wallet
    /** The config address of the candy machine. You can retrieve this if you have the candy machine ID using <a href=\"#operation/solanaGetCandyMachineDetails\">this endpoint</a> and retrieving the `config_address` from the response.  A candy machine ID is the same thing as a configuration address for v2 candy machines.  */
    public var configAddress: String
    public var network: Network? = .devnet
    /** The candy machine contract of the candy machine from which you're minting. If you are minting from a `v1` candy machine ID, set this to `v1`. If you are minting from a `v2` candy machine ID, set this to `v2`. If you don't know which the version of your candy machine, check out <a href=\"#operation/solanaGetAccountIsCandyMachine\">this endpoint</a>.  */
    public var candyMachineContractVersion: CandyMachineContractVersion? = .v1

    public init(wallet: Wallet, configAddress: String, network: Network? = .devnet, candyMachineContractVersion: CandyMachineContractVersion? = .v1) {
        self.wallet = wallet
        self.configAddress = configAddress
        self.network = network
        self.candyMachineContractVersion = candyMachineContractVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wallet
        case configAddress = "config_address"
        case network
        case candyMachineContractVersion = "candy_machine_contract_version"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(wallet, forKey: .wallet)
        try container.encode(configAddress, forKey: .configAddress)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(candyMachineContractVersion, forKey: .candyMachineContractVersion)
    }
}

