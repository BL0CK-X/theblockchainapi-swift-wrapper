//
// ProjectCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** You can change any of these parameters after creating the project. None of these parameters are required.  */
public struct ProjectCreateRequest: Codable, JSONEncodable, Hashable {

    /** The name of the mini-API. This will be shown at the top of the mini-API's documentation.  */
    public var projectName: String?
    /** The description of the mini-API. This will be shown at the top of the mini-API's documentation, below the title.  */
    public var projectDescription: String?
    /** The email where users of your mini-API can contact you. This will be shown at the top of the mini-API's documentation.  */
    public var contactEmail: String?
    /** A list of groups. A section contains groups, and groups contain API endpoints.   */
    public var groups: [Group]?

    public init(projectName: String? = nil, projectDescription: String? = nil, contactEmail: String? = nil, groups: [Group]? = nil) {
        self.projectName = projectName
        self.projectDescription = projectDescription
        self.contactEmail = contactEmail
        self.groups = groups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case projectName = "project_name"
        case projectDescription = "project_description"
        case contactEmail = "contact_email"
        case groups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(projectName, forKey: .projectName)
        try container.encodeIfPresent(projectDescription, forKey: .projectDescription)
        try container.encodeIfPresent(contactEmail, forKey: .contactEmail)
        try container.encodeIfPresent(groups, forKey: .groups)
    }
}

