//
// TransferRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransferRequest: Codable, Hashable {

    public enum Network: String, Codable, CaseIterable {
        case devnet = "devnet"
        case mainnetBeta = "mainnet-beta"
    }
    /** The public key address of the recipient to whom you want to send a token or NFT */
    public var recipientAddress: String
    /** The twelve word phrase that can be used to derive many public key addresses. To derive a public key, you need a secret recovery phrase, a derivation path, and an optional passphrase. See our Security section <a href=\"#section/Security\">here</a>. */
    public var secretRecoveryPhrase: String
    /** Derivation paths are used to derive the public key from the secret recovery phrase. Only certain paths are accepted.  We use \"m/44/501/0/0\" by default, if it is not provided. This is the path that the Phantom and Sollet wallets use. If you provide the empty string \"\" as the value for the derivation path, then we will use the Solana CLI default value. The SolFlare recommended path is \"m/44/501/0\".  You can also arbitrarily increment the default path (\"m/44/501/0/0\") to generate more wallets (e.g., \"m/44/501/0/1\", \"m/44/501/0/2\", ...). This is how Phantom generates more wallets.  To learn more about derivation paths, check out <a href=\"https://learnmeabitcoin.com/technical/derivation-paths\" target=\"_blank\">this tutorial</a>. */
    public var derivationPath: String? = "m/44/501/0/0"
    /** PASSPHRASE != PASSWORD. This is NOT your Phantom password or any other password. It is an optional string you use when creating a wallet. This provides an additional layer of security because a hacker would need both the secret recovery phrase and the passphrase to access the output public key. By default, most wallet UI extensions do not use a passphrase. (You probably did not use a passphrase.) Limited to 500 characters.  */
    public var passphrase: String? = ""
    /** If you're transfering an NFT, supply the `mint` (the address of the mint) for the `token_address`. If you're transfering a token, supply the token address found on the explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`. If you're transferring SOL, do not supply a value for `token_address`.  */
    public var tokenAddress: String?
    public var network: Network? = .devnet
    /** The quantity of the token or NFT you want to send. If sending an NFT, there is no need to supply this value.  This value must be a string. You can supply a float value (e.g., \"0.0005\").  */
    public var amount: String? = "1"

    public init(recipientAddress: String, secretRecoveryPhrase: String, derivationPath: String? = "m/44/501/0/0", passphrase: String? = "", tokenAddress: String? = nil, network: Network? = .devnet, amount: String? = "1") {
        self.recipientAddress = recipientAddress
        self.secretRecoveryPhrase = secretRecoveryPhrase
        self.derivationPath = derivationPath
        self.passphrase = passphrase
        self.tokenAddress = tokenAddress
        self.network = network
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipientAddress = "recipient_address"
        case secretRecoveryPhrase = "secret_recovery_phrase"
        case derivationPath = "derivation_path"
        case passphrase
        case tokenAddress = "token_address"
        case network
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recipientAddress, forKey: .recipientAddress)
        try container.encode(secretRecoveryPhrase, forKey: .secretRecoveryPhrase)
        try container.encodeIfPresent(derivationPath, forKey: .derivationPath)
        try container.encodeIfPresent(passphrase, forKey: .passphrase)
        try container.encodeIfPresent(tokenAddress, forKey: .tokenAddress)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}

