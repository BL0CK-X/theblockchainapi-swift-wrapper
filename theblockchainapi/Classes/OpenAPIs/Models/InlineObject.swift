//
// InlineObject.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InlineObject: Codable, JSONEncodable, Hashable {

    public enum Platform: String, Codable, CaseIterable {
        case darwin = "Darwin"
        case linux = "Linux"
        case windows = "Windows"
    }
    /** The platform for which the binary was compiled. Note that Darwin = Mac. */
    public var platform: Platform?

    public init(platform: Platform? = nil) {
        self.platform = platform
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case platform
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(platform, forKey: .platform)
    }
}

