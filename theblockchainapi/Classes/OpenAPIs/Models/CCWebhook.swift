//
// CCWebhook.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CCWebhook: Codable, JSONEncodable, Hashable {

    /** The unique identifier of the webhook  */
    public var webhookId: String?
    /** A signature from the Blockchain API that verifies the webhook is from us. An array of integers.  */
    public var signature: AnyCodable?
    /** The time we sent the webhook  */
    public var timeSent: Double?
    public var data: CCPayment?

    public init(webhookId: String? = nil, signature: AnyCodable? = nil, timeSent: Double? = nil, data: CCPayment? = nil) {
        self.webhookId = webhookId
        self.signature = signature
        self.timeSent = timeSent
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case webhookId = "webhook_id"
        case signature
        case timeSent = "time_sent"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(webhookId, forKey: .webhookId)
        try container.encodeIfPresent(signature, forKey: .signature)
        try container.encodeIfPresent(timeSent, forKey: .timeSent)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

