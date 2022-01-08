//
// SecretRecoveryPhrase.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SecretRecoveryPhrase: Codable, Hashable {

    /** The twelve word phrase that can be used to derive many public key addresses (e.g., bottom army bless castle alter habit dish embody child flame smooth zone).  To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase.   Alternatively, you can derive a public key with a private key. */
    public var secretRecoveryPhrase: String
    /** Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  If you provide the empty string \"\" as the value for the derivation path, then we will derive your public key with the same behavior as the default behavior of the Solana CLI.  By default, we use \"m/44/501/0/0\". This is the path that the Phantom and Sollet wallets use.  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ... AND/OR \"m/44/501/1/0\", \"m/44/501/2/0\", ...).  Phantom's Wallet increments the first digit (e.g., \"m/44/501/0/0\", \"m/44/501/1/0\", \"m/44/501/2/0\", ...) to generate more public key addresses.  The SolFlare recommended path is \"m/44/501/0\".  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>. */
    public var derivationPath: String? = "m/44/501/0/0"
    /** PASSPHRASE != PASSWORD. This is NOT your Phantom password or any other password. It is an optional string you use when creating a wallet. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. (You probably did not use a passphrase.) Limited to 500 characters.  */
    public var passphrase: String? = ""

    public init(secretRecoveryPhrase: String, derivationPath: String? = "m/44/501/0/0", passphrase: String? = "") {
        self.secretRecoveryPhrase = secretRecoveryPhrase
        self.derivationPath = derivationPath
        self.passphrase = passphrase
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case secretRecoveryPhrase = "secret_recovery_phrase"
        case derivationPath = "derivation_path"
        case passphrase
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(secretRecoveryPhrase, forKey: .secretRecoveryPhrase)
        try container.encodeIfPresent(derivationPath, forKey: .derivationPath)
        try container.encodeIfPresent(passphrase, forKey: .passphrase)
    }
}

