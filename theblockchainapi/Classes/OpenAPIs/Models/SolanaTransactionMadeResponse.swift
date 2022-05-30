//
// SolanaTransactionMadeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SolanaTransactionMadeResponse: Codable, JSONEncodable, Hashable {

    /** The identifier of the transaction */
    public var transactionBlockchainIdentifier: String?
    /** Whether or not the transaction was confirmed */
    public var transactionConfirmed: Bool?

    public init(transactionBlockchainIdentifier: String? = nil, transactionConfirmed: Bool? = nil) {
        self.transactionBlockchainIdentifier = transactionBlockchainIdentifier
        self.transactionConfirmed = transactionConfirmed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactionBlockchainIdentifier = "transaction_blockchain_identifier"
        case transactionConfirmed = "transaction_confirmed"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(transactionBlockchainIdentifier, forKey: .transactionBlockchainIdentifier)
        try container.encodeIfPresent(transactionConfirmed, forKey: .transactionConfirmed)
    }
}

