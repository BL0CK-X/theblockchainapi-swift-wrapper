//
// Endpoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Endpoint: Codable, JSONEncodable, Hashable {

    /** The ID of the project. This is auto-generated upon project creation and cannot currently be changed.  */
    public var projectId: String
    /** The project version under which the endpoint exists  */
    public var version: String
    /** The path of the endpoint  */
    public var path: String
    /** The operation ID of the endpoint.  */
    public var operationId: String
    /** The name of the endpoint formatted in a readable way (e.g., Get Endpoint Metadata).  */
    public var readableName: String
    /** The summary of the endpoint to be displayed in the sidebar on the left of the mini-API's documentation  */
    public var summary: String?
    /** A description of what the endpoint does. This will be shown in the mini-API documentation.  */
    public var description: String?
    /** The price of the endpoint. Valid values are integers from 1 to 100.  */
    public var credits: Double
    /** The name of the group of endpoints that the endpoint comes from  */
    public var groupName: String?
    /** A list of dictionaries. Each dictionary describes one parameter for the input, including the name, type, required boolean, and description values of that parameter. */
    public var inputSpecification: [ParameterSpecification]
    /** An example of the JSON input that a user might send. Limited to one example currently.  */
    public var inputExamples: AnyCodable
    /** A list of dictionaries. Each dictionary describes one parameter for the input, including the name, type, required boolean, and description values of that parameter. */
    public var outputSpecification: [ParameterSpecification]
    /** An example of the JSON output that a user might send. Limited to one example currently.  */
    public var outputExamples: AnyCodable

    public init(projectId: String, version: String, path: String, operationId: String, readableName: String, summary: String? = nil, description: String? = nil, credits: Double, groupName: String? = nil, inputSpecification: [ParameterSpecification], inputExamples: AnyCodable, outputSpecification: [ParameterSpecification], outputExamples: AnyCodable) {
        self.projectId = projectId
        self.version = version
        self.path = path
        self.operationId = operationId
        self.readableName = readableName
        self.summary = summary
        self.description = description
        self.credits = credits
        self.groupName = groupName
        self.inputSpecification = inputSpecification
        self.inputExamples = inputExamples
        self.outputSpecification = outputSpecification
        self.outputExamples = outputExamples
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case projectId = "project_id"
        case version
        case path
        case operationId = "operation_id"
        case readableName = "readable_name"
        case summary
        case description
        case credits
        case groupName = "group_name"
        case inputSpecification = "input_specification"
        case inputExamples = "input_examples"
        case outputSpecification = "output_specification"
        case outputExamples = "output_examples"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(version, forKey: .version)
        try container.encode(path, forKey: .path)
        try container.encode(operationId, forKey: .operationId)
        try container.encode(readableName, forKey: .readableName)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(credits, forKey: .credits)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encode(inputSpecification, forKey: .inputSpecification)
        try container.encode(inputExamples, forKey: .inputExamples)
        try container.encode(outputSpecification, forKey: .outputSpecification)
        try container.encode(outputExamples, forKey: .outputExamples)
    }
}

