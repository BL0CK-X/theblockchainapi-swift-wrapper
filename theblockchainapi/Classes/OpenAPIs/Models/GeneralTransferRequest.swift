//
// GeneralTransferRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GeneralTransferRequest: Codable, JSONEncodable, Hashable {

    /** The blockchain identifier of the recipient to whom you want to send a token or NFT.  On Ethereum, this is the hex public address of the recipient (e.g., `0x150865ca659204a9a0cd0da00296c6b5db441172`)  On Solana, this is the public key of the recipient (e.g., `EW3nXn7X4NTWFKWaJgxKrFNoTSkop1cBUVHA21zrfF6u`).  */
    public var recipientBlockchainIdentifier: String
    public var wallet: GeneralWallet?
    /** The `token_blockchain_identifier` identifies the token you wish to transfer.  - If you're transferring a native blockchain currency (e.g., SOL, ETH, BNB), then simply do not supply this value. - If you're transfering an NFT, then supply the token address of the NFT. On Solana, this is the `mint_address` or `mint` (the address of the mint). - If you're transfering a token, supply the token address. For Solana, you can find on this on the Solana Explorer (e.g., see `SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt` for <a href=\"https://explorer.solana.com/address/SRMuApVNdxXokk5GT7XD5cUUgXMBCoAz2LHeuAoKWRt\" target=\"_blank\">Serum Token</a>) for the `token_address`.  Examples: - Ethereum: `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` - Solana: `CK1LHEANTu7RFqN3XMzo2AnZhyus2W1vue1njrxLEM1d` */
    public var tokenBlockchainIdentifier: String?
    /** The network of the blockchain you selected  - Solana: `devnet`, `mainnet-beta` - Ethereum: `ropsten`, `mainnet`  Defaults when not provided (not applicable to path parameters): - Solana: `devnet` - Ethereum: `ropsten` */
    public var network: String?
    /** This value must be a string. What you provide here depends on if you are sending an NFT, an SPL token, or SOL.  - Native Currency (e.g., SOL, ETH, BNB): Supply this value denominated in the native currency (e.g., in SOL (but not in Lamports), or in ETH (but not in Wei)) in a string format. This does not need to be an integer. For example, if you want to send 0.0005 SOL, then `amount = \"0.0005\"`. If you want to send 0.0005 ETH, then `amount = \"0.0005\"`. - NFT: This must be `1`. - Token: This must be an integer in string format. To convert from what you see on a wallet UI (e.g., 1 ATLAS, 1 USDC) to an integer value, you have to multiply that value by 10^<i>x</i> where <i>x</i> is the number of decimals. For example, to transfer 0.2 USDC, if USDC uses 6 decimals, then the amount is 0.2 * 10^6 = 200000.    - For Solana, you can get the number of decimals for a given SPL token <a href=\"#operation/solanaGetSPLToken\">here</a>. We are working on analogues of this endpoint for other blockchains. */
    public var amount: String? = "1"
    /** - If `false`, we sign and submit the transaction (`wallet` is required in this case; do not provide a value for `sender_blockchain_identifier`).  - If `true`, we compile the transaction (either `wallet` or `sender_blockchain_identifier` is required in this case; do not provide both).    */
    public var returnCompiledTransaction: Bool? = false
    /** To understand the purpose of `sender_blockchain_identifier` first note the following: There are two ways you can complete a transfer transaction:  - (1) we complete it for you with your `wallet` information or  - (2) we return the raw instruction data that you can sign and submit yourself (no private keys required).  When you provide your `wallet` authentication, we are able to determine your wallet's blockchain identifier (public key or address) which is the sender public key of the transaction.  When you are not providing your `wallet` as authentication, we still need the `sender_blockchain_identifier` to be able to return the compiled transaction. Thus, you provide `sender_blockchain_identifier` if and only if you are not providing `wallet` authentication information **and** you are returning a compiled transaction.  You will receive an error if you provide both `wallet` and `sender_blockchain_identifier`. You will receive an error if you provide neither `wallet` nor `sender_blockchain_identifier`. */
    public var senderBlockchainIdentifier: String? = "null"
    public var feePayerWallet: GeneralFeePayerWallet?

    public init(recipientBlockchainIdentifier: String, wallet: GeneralWallet? = nil, tokenBlockchainIdentifier: String? = nil, network: String? = nil, amount: String? = "1", returnCompiledTransaction: Bool? = false, senderBlockchainIdentifier: String? = "null", feePayerWallet: GeneralFeePayerWallet? = nil) {
        self.recipientBlockchainIdentifier = recipientBlockchainIdentifier
        self.wallet = wallet
        self.tokenBlockchainIdentifier = tokenBlockchainIdentifier
        self.network = network
        self.amount = amount
        self.returnCompiledTransaction = returnCompiledTransaction
        self.senderBlockchainIdentifier = senderBlockchainIdentifier
        self.feePayerWallet = feePayerWallet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipientBlockchainIdentifier = "recipient_blockchain_identifier"
        case wallet
        case tokenBlockchainIdentifier = "token_blockchain_identifier"
        case network
        case amount
        case returnCompiledTransaction = "return_compiled_transaction"
        case senderBlockchainIdentifier = "sender_blockchain_identifier"
        case feePayerWallet = "fee_payer_wallet"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recipientBlockchainIdentifier, forKey: .recipientBlockchainIdentifier)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(tokenBlockchainIdentifier, forKey: .tokenBlockchainIdentifier)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(returnCompiledTransaction, forKey: .returnCompiledTransaction)
        try container.encodeIfPresent(senderBlockchainIdentifier, forKey: .senderBlockchainIdentifier)
        try container.encodeIfPresent(feePayerWallet, forKey: .feePayerWallet)
    }
}

