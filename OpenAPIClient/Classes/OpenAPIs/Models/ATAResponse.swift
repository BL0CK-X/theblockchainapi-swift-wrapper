//
// ATAResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ATAResponse: Codable, Hashable {

    /** The associated token address */
    public var associatedTokenAddress: String

    public init(associatedTokenAddress: String) {
        self.associatedTokenAddress = associatedTokenAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case associatedTokenAddress = "associated_token_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(associatedTokenAddress, forKey: .associatedTokenAddress)
    }
}
