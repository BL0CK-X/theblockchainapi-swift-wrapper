//
// MintNFTErrorResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MintNFTErrorResponse: Codable, JSONEncodable, Hashable {

    public var error: String?

    public init(error: String? = nil) {
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

