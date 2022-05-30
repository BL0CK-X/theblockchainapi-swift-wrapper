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

    public init(transactionSignature: String? = nil) {
        self.transactionSignature = transactionSignature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionSignature = "transaction_signature"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(transactionSignature, forKey: .transactionSignature)
    }
}

