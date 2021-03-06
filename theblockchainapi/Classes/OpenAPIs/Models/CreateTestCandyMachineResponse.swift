//
// CreateTestCandyMachineResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CreateTestCandyMachineResponse: Codable, JSONEncodable, Hashable {

    /** The ID of the candy machine created */
    public var candyMachineId: String

    public init(candyMachineId: String) {
        self.candyMachineId = candyMachineId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case candyMachineId = "candy_machine_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(candyMachineId, forKey: .candyMachineId)
    }
}

