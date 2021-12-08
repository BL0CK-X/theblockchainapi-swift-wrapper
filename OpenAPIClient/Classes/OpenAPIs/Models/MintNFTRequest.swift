//
// MintNFTRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MintNFTRequest: Codable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The ID of the candy machine  */
    public var candyMachineId: String
    /** The twelve word phrase that can be used to derive many public key addresses. To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase. See our Security section <a href=\"#section/Security\">here</a>. */
    public var secretRecoveryPhrase: String
    /** Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  We use \"m/44/501/0/0\" by default, if it is not provided. This is the path that the Phantom and Sollet wallets use. If you provide the empty string \"\" as the value for the derivation path, then we will use the Solana CLI default value. The SolFlare recommended path is \"m/44/501/0\".  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ...). This is how Phantom generates more wallets.  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>. */
    public var derivationPath: String? = "m/44/501/0/0"
    /** An optional string used to generate an address. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. Limited to 500 characters.  */
    public var passphrase: String? = ""
    public var network: Network? = .devnet

    public init(candyMachineId: String, secretRecoveryPhrase: String, derivationPath: String? = "m/44/501/0/0", passphrase: String? = "", network: Network? = .devnet) {
        self.candyMachineId = candyMachineId
        self.secretRecoveryPhrase = secretRecoveryPhrase
        self.derivationPath = derivationPath
        self.passphrase = passphrase
        self.network = network
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case candyMachineId = "candy_machine_id"
        case secretRecoveryPhrase = "secret_recovery_phrase"
        case derivationPath = "derivation_path"
        case passphrase
        case network
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(candyMachineId, forKey: .candyMachineId)
        try container.encode(secretRecoveryPhrase, forKey: .secretRecoveryPhrase)
        try container.encodeIfPresent(derivationPath, forKey: .derivationPath)
        try container.encodeIfPresent(passphrase, forKey: .passphrase)
        try container.encodeIfPresent(network, forKey: .network)
    }
}

