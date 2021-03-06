//
// NFTOwnerResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NFTOwnerResponse: Codable, JSONEncodable, Hashable {

    /** The public key address of the wallet that has ownership over the provided NFT */
    public var nftOwner: String

    public init(nftOwner: String) {
        self.nftOwner = nftOwner
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nftOwner = "nft_owner"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nftOwner, forKey: .nftOwner)
    }
}

