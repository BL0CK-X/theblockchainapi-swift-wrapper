//
// CreateTestCandyMachineRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateTestCandyMachineRequest: Codable, JSONEncodable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    public enum CandyMachineContractVersion: String, Codable, CaseIterable {
        case v2 = "v2"
    }
    public var wallet: Wallet
    public var network: Network? = .devnet
    /** The contract you want to use to create the candy machine. Note: Metaplex disabled the creation of `v1` candy machines on their smart contract, and so we no longer support the creation of `v1` test candy machines.  */
    public var candyMachineContractVersion: CandyMachineContractVersion? = .v2
    /** Whether or not to include a gatekeeper for testing purposes. Only applies to v2 candy machines. */
    public var includeGatekeeper: Bool? = false

    public init(wallet: Wallet, network: Network? = .devnet, candyMachineContractVersion: CandyMachineContractVersion? = .v2, includeGatekeeper: Bool? = false) {
        self.wallet = wallet
        self.network = network
        self.candyMachineContractVersion = candyMachineContractVersion
        self.includeGatekeeper = includeGatekeeper
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wallet
        case network
        case candyMachineContractVersion = "candy_machine_contract_version"
        case includeGatekeeper = "include_gatekeeper"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(wallet, forKey: .wallet)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(candyMachineContractVersion, forKey: .candyMachineContractVersion)
        try container.encodeIfPresent(includeGatekeeper, forKey: .includeGatekeeper)
    }
}

