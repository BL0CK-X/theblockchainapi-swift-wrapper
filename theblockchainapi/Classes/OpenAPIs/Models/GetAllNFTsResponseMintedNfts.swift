//
// GetAllNFTsResponseMintedNfts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetAllNFTsResponseMintedNfts: Codable, Hashable {

    public var nftMetadata: NFT?
    /** Use this to verify the NFT */
    public var pubKeyHash: String?

    public init(nftMetadata: NFT? = nil, pubKeyHash: String? = nil) {
        self.nftMetadata = nftMetadata
        self.pubKeyHash = pubKeyHash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nftMetadata = "nft_metadata"
        case pubKeyHash = "pub_key_hash"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nftMetadata, forKey: .nftMetadata)
        try container.encodeIfPresent(pubKeyHash, forKey: .pubKeyHash)
    }
}

