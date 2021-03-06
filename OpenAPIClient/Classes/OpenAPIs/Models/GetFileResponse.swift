//
// GetFileResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetFileResponse: Codable, Hashable {

    public var uri: String?
    /** File size in kilobytes */
    public var size: String?
    /** The time when the file was uploaded */
    public var uploadTime: String?

    public init(uri: String? = nil, size: String? = nil, uploadTime: String? = nil) {
        self.uri = uri
        self.size = size
        self.uploadTime = uploadTime
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uri
        case size
        case uploadTime = "upload_time"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(uploadTime, forKey: .uploadTime)
    }
}

