//
// GeneralWallet.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The wallet authentication information used to sign and submit the transaction.  Click the &#x60;&gt;&#x60; arrow next to \&quot;wallet\&quot; on the left to see more details. See our Security section &lt;a href&#x3D;\&quot;#section/Security\&quot;&gt;here&lt;/a&gt;.  */
public enum GeneralWallet: Codable, JSONEncodable, Hashable {
    case typeGeneralB58PrivateKey(GeneralB58PrivateKey)
    case typeGeneralPrivateKey(GeneralPrivateKey)
    case typeGeneralSecretRecoveryPhrase(GeneralSecretRecoveryPhrase)
    case typeHexPrivateKey(HexPrivateKey)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeGeneralB58PrivateKey(let value):
            try container.encode(value)
        case .typeGeneralPrivateKey(let value):
            try container.encode(value)
        case .typeGeneralSecretRecoveryPhrase(let value):
            try container.encode(value)
        case .typeHexPrivateKey(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(GeneralB58PrivateKey.self) {
            self = .typeGeneralB58PrivateKey(value)
        } else if let value = try? container.decode(GeneralPrivateKey.self) {
            self = .typeGeneralPrivateKey(value)
        } else if let value = try? container.decode(GeneralSecretRecoveryPhrase.self) {
            self = .typeGeneralSecretRecoveryPhrase(value)
        } else if let value = try? container.decode(HexPrivateKey.self) {
            self = .typeHexPrivateKey(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GeneralWallet"))
        }
    }
}

