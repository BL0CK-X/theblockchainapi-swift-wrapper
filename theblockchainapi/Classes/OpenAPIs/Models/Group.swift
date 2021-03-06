//
// Group.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A group is a group of endpoints.  */
public struct Group: Codable, JSONEncodable, Hashable {

    /** The name of the section under which this group is listed. A section contains several groups.  */
    public var sectionName: String?
    /** The name of the group  */
    public var groupName: String?
    /** The description of the group  */
    public var groupDescription: String?

    public init(sectionName: String? = nil, groupName: String? = nil, groupDescription: String? = nil) {
        self.sectionName = sectionName
        self.groupName = groupName
        self.groupDescription = groupDescription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sectionName = "section_name"
        case groupName = "group_name"
        case groupDescription = "group_description"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(sectionName, forKey: .sectionName)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(groupDescription, forKey: .groupDescription)
    }
}

