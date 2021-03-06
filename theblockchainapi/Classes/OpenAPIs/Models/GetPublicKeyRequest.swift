//
// GetPublicKeyRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetPublicKeyRequest: Codable, JSONEncodable, Hashable {

    public var wallet: Wallet

    public init(wallet: Wallet) {
        self.wallet = wallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wallet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(wallet, forKey: .wallet)
    }
}

