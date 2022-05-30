//
// AccountValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountValue: Codable, JSONEncodable, Hashable {

    /** More info about the account. What are included depends on the type of account. See examples. */
    public var data: AnyCodable?
    /** Whether or not this account is marked as executable */
    public var executable: Bool?
    /** The owner of the account */
    public var owner: String?
    public var rentEpoch: Double?

    public init(data: AnyCodable? = nil, executable: Bool? = nil, owner: String? = nil, rentEpoch: Double? = nil) {
        self.data = data
        self.executable = executable
        self.owner = owner
        self.rentEpoch = rentEpoch
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case executable
        case owner
        case rentEpoch = "rent_epoch"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(executable, forKey: .executable)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(rentEpoch, forKey: .rentEpoch)
    }
}

