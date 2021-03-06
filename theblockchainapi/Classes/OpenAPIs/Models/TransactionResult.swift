//
// TransactionResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransactionResult: Codable, JSONEncodable, Hashable {

    public var blockTime: Double?
    public var meta: AnyCodable?
    public var slot: Double?
    public var transaction: AnyCodable?

    public init(blockTime: Double? = nil, meta: AnyCodable? = nil, slot: Double? = nil, transaction: AnyCodable? = nil) {
        self.blockTime = blockTime
        self.meta = meta
        self.slot = slot
        self.transaction = transaction
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case blockTime = "block_time"
        case meta
        case slot
        case transaction
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(blockTime, forKey: .blockTime)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(slot, forKey: .slot)
        try container.encodeIfPresent(transaction, forKey: .transaction)
    }
}

