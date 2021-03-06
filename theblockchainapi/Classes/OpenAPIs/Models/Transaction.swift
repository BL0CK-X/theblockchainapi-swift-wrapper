//
// Transaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Transaction: Codable, JSONEncodable, Hashable {

    public var id: Double?
    public var jsonrpc: String?
    public var result: TransactionResult?

    public init(id: Double? = nil, jsonrpc: String? = nil, result: TransactionResult? = nil) {
        self.id = id
        self.jsonrpc = jsonrpc
        self.result = result
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case jsonrpc
        case result
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(jsonrpc, forKey: .jsonrpc)
        try container.encodeIfPresent(result, forKey: .result)
    }
}

