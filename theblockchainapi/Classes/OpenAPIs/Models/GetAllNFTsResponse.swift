//
// GetAllNFTsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetAllNFTsResponse: Codable, Hashable {

    /** The minted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`. */
    public var mintedNfts: [GetAllNFTsResponseMintedNfts]?
    /** The unminted NFTs. Only filled in for `v1` candy machines. Left empty for `v2`. */
    public var unmintedNfts: [GetAllNFTsResponseUnmintedNfts]?
    /** The list of all NFTs. Filled in for both `v1` and `v2` NFTs. */
    public var allNfts: [GetAllNFTsResponseUnmintedNfts]?
    /** Whether or not the division of NFTs among minted and unminted is accurate. If it is not accurate, then it is possible that NFTs have been included in the `minted` list that are not actually minted. If it is accurate, then the split of  minted and unminted is correct. `v1` candy machines always return a correct minted/unminted split.   */
    public var accurate: Bool?

    public init(mintedNfts: [GetAllNFTsResponseMintedNfts]? = nil, unmintedNfts: [GetAllNFTsResponseUnmintedNfts]? = nil, allNfts: [GetAllNFTsResponseUnmintedNfts]? = nil, accurate: Bool? = nil) {
        self.mintedNfts = mintedNfts
        self.unmintedNfts = unmintedNfts
        self.allNfts = allNfts
        self.accurate = accurate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mintedNfts = "minted_nfts"
        case unmintedNfts = "unminted_nfts"
        case allNfts = "all_nfts"
        case accurate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mintedNfts, forKey: .mintedNfts)
        try container.encodeIfPresent(unmintedNfts, forKey: .unmintedNfts)
        try container.encodeIfPresent(allNfts, forKey: .allNfts)
        try container.encodeIfPresent(accurate, forKey: .accurate)
    }
}

