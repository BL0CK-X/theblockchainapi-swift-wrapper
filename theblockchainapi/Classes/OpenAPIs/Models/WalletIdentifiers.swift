//
// WalletIdentifiers.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The wallet indentification information. Click the &#x60;&gt;&#x60; arrow next to \&quot;wallet\&quot; on the left to see more details.  */
public enum WalletIdentifiers: Codable, JSONEncodable, Hashable {
    case typeAvalancheCChainPublicAddress(AvalancheCChainPublicAddress)
    case typeAvalancheXPChainPublicAddress(AvalancheXPChainPublicAddress)
    case typeBSCPublicAddress(BSCPublicAddress)
    case typeEthereumPublicAddress(EthereumPublicAddress)
    case typeNearPublicKey(NearPublicKey)
    case typeSolanaPublicKey(SolanaPublicKey)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAvalancheCChainPublicAddress(let value):
            try container.encode(value)
        case .typeAvalancheXPChainPublicAddress(let value):
            try container.encode(value)
        case .typeBSCPublicAddress(let value):
            try container.encode(value)
        case .typeEthereumPublicAddress(let value):
            try container.encode(value)
        case .typeNearPublicKey(let value):
            try container.encode(value)
        case .typeSolanaPublicKey(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AvalancheCChainPublicAddress.self) {
            self = .typeAvalancheCChainPublicAddress(value)
        } else if let value = try? container.decode(AvalancheXPChainPublicAddress.self) {
            self = .typeAvalancheXPChainPublicAddress(value)
        } else if let value = try? container.decode(BSCPublicAddress.self) {
            self = .typeBSCPublicAddress(value)
        } else if let value = try? container.decode(EthereumPublicAddress.self) {
            self = .typeEthereumPublicAddress(value)
        } else if let value = try? container.decode(NearPublicKey.self) {
            self = .typeNearPublicKey(value)
        } else if let value = try? container.decode(SolanaPublicKey.self) {
            self = .typeSolanaPublicKey(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of WalletIdentifiers"))
        }
    }
}

