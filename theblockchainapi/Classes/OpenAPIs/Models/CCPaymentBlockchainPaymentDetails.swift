//
// CCPaymentBlockchainPaymentDetails.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The information necessary to verify the payment.   */
public struct CCPaymentBlockchainPaymentDetails: Codable, JSONEncodable, Hashable {

    public enum Chain: String, Codable, CaseIterable {
        case solana = "solana"
    }
    /** The chain on which the payment was made.  */
    public var chain: Chain?
    /** The fee taken by the blockchain API. This is shown in integer form.  */
    public var feeAmount: String?
    /** The amount paid to the project's payout wallet (the recipient of the payment). This is shown in integer form.  */
    public var payoutAmount: String?
    /** The blockchain identifier of the token used to pay. Currently, we only support payments in USDC.  */
    public var tokenBlockchainIdentifier: String?
    /** The total paid by the user when making the payment. This should match the amount set in the respective plan.  */
    public var totalPaid: String?
    /** The transaction signature which you can use to manually or automatically verify the transaction on the blockchain.  */
    public var transactionSignature: String?

    public init(chain: Chain? = nil, feeAmount: String? = nil, payoutAmount: String? = nil, tokenBlockchainIdentifier: String? = nil, totalPaid: String? = nil, transactionSignature: String? = nil) {
        self.chain = chain
        self.feeAmount = feeAmount
        self.payoutAmount = payoutAmount
        self.tokenBlockchainIdentifier = tokenBlockchainIdentifier
        self.totalPaid = totalPaid
        self.transactionSignature = transactionSignature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chain
        case feeAmount = "fee_amount"
        case payoutAmount = "payout_amount"
        case tokenBlockchainIdentifier = "token_blockchain_identifier"
        case totalPaid = "total_paid"
        case transactionSignature = "transaction_signature"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(chain, forKey: .chain)
        try container.encodeIfPresent(feeAmount, forKey: .feeAmount)
        try container.encodeIfPresent(payoutAmount, forKey: .payoutAmount)
        try container.encodeIfPresent(tokenBlockchainIdentifier, forKey: .tokenBlockchainIdentifier)
        try container.encodeIfPresent(totalPaid, forKey: .totalPaid)
        try container.encodeIfPresent(transactionSignature, forKey: .transactionSignature)
    }
}
