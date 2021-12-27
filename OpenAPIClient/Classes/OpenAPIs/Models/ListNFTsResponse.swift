//
// ListNFTsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListNFTsResponse: Codable, Hashable {

    /** A list of mint addresses represented by a string */
    public var nftsOwned: [String]?

    public init(nftsOwned: [String]? = nil) {
        self.nftsOwned = nftsOwned
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nftsOwned = "nfts_owned"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nftsOwned, forKey: .nftsOwned)
    }
}
