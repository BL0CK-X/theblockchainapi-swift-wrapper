//
// NFTAnalyticsResponseTransactionHistory.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A dictionary that maps each mint address to its transaction history. See the example to the right (click \&quot;Expand All\&quot;). The transaction history consists of a list of transactions.  Each transaction is represented by an object with the following properties: &#x60;block_time&#x60;, &#x60;exchange&#x60;, &#x60;exchange_readable&#x60;, &#x60;mint_address&#x60;, &#x60;operation&#x60;, &#x60;seller&#x60;, &#x60;buyer&#x60;, and &#x60;transaction_signature&#x60;.  */
public struct NFTAnalyticsResponseTransactionHistory: Codable, JSONEncodable, Hashable {

    /** The address of the NFT  */
    public var mintAddress: [NFTTransaction]?

    public init(mintAddress: [NFTTransaction]? = nil) {
        self.mintAddress = mintAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mintAddress = "mint_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(mintAddress, forKey: .mintAddress)
    }
}

