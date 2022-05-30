//
// NFTMintFee.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NFTMintFee: Codable, JSONEncodable, Hashable {

    /** The estimate of the total fee for minting an NFT on Solana */
    public var nftMintFeeEstimateLamports: Double?
    /** A description of the fee that explains how it was estimated */
    public var description: String?

    public init(nftMintFeeEstimateLamports: Double? = nil, description: String? = nil) {
        self.nftMintFeeEstimateLamports = nftMintFeeEstimateLamports
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nftMintFeeEstimateLamports = "nft_mint_fee_estimate_lamports"
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nftMintFeeEstimateLamports, forKey: .nftMintFeeEstimateLamports)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

