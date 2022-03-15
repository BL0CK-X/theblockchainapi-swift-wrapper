//
// ProjectDeploymentURL.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProjectDeploymentURL: Codable, Hashable {

    /** The URL of the bucket where you will upload your binary  */
    public var url: String?
    /** An internal version tracking the version of the binary uploaded  */
    public var deploymentVersion: String?
    /** Information necessary to sign the upload URL  */
    public var fields: AnyCodable?

    public init(url: String? = nil, deploymentVersion: String? = nil, fields: AnyCodable? = nil) {
        self.url = url
        self.deploymentVersion = deploymentVersion
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case deploymentVersion = "deployment_version"
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(deploymentVersion, forKey: .deploymentVersion)
        try container.encodeIfPresent(fields, forKey: .fields)
    }
}

