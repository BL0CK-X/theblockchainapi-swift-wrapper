//
// TransferResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransferResponse: Codable, JSONEncodable, Hashable {

    /** The signature of the transaction */
    public var transactionSignature: String?
    /** Whether or not the transaction was confirmed or simply submitted for processing. The status depends on your input for `wait_for_confirmation`. This only is returned when you are submitting a transaction, not when retrieving signatures for a public key, for example. */
    public var confirmed: Bool?

    public init(transactionSignature: String? = nil, confirmed: Bool? = nil) {
        self.transactionSignature = transactionSignature
        self.confirmed = confirmed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionSignature = "transaction_signature"
        case confirmed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(transactionSignature, forKey: .transactionSignature)
        try container.encodeIfPresent(confirmed, forKey: .confirmed)
    }
}

