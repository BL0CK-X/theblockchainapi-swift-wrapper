//
// FeePayerWallet.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** If you do NOT provide a wallet here, the fee payer of the transaction will be the &#x60;wallet&#x60; you provide or the &#x60;sender_public_key&#x60;.        If you do provide a wallet, then the &#x60;fee_payer_wallet&#x60; will pay the fees of the transaction and any costs associated with creating a new associated token account (only if necessary; approx. 0.002 SOL when necessary). A new account is necessary if you are sending an NFT or SPL token to a user that has not received the same NFT or one of the SPL tokens before (thus, a new associated token account is needed). */
public enum FeePayerWallet: Codable {
    case typeB58PrivateKey(B58PrivateKey)
    case typePrivateKey(PrivateKey)
    case typeSecretRecoveryPhrase(SecretRecoveryPhrase)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeB58PrivateKey(let value):
            try container.encode(value)
        case .typePrivateKey(let value):
            try container.encode(value)
        case .typeSecretRecoveryPhrase(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(B58PrivateKey.self) {
            self = .typeB58PrivateKey(value)
        } else if let value = try? container.decode(PrivateKey.self) {
            self = .typePrivateKey(value)
        } else if let value = try? container.decode(SecretRecoveryPhrase.self) {
            self = .typeSecretRecoveryPhrase(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of FeePayerWallet"))
        }
    }
}

