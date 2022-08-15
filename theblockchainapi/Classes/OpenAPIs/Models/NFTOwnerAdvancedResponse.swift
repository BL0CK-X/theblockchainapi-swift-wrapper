//
// NFTOwnerAdvancedResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NFTOwnerAdvancedResponse: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case loaning = "loaning"
        case listing = "listing"
        case staking = "staking"
        case holding = "holding"
        case burned = "burned"
    }
    public var contract: NFTOwnerAdvancedResponseContract?
    /** The public key of the wallet that has true ownership over the provided NFT. If listed, it is the lister. If placed on a loan, it is the loanee. If staked, it is the staker. If burned, it is the burner. Etc. Returns `null` in the edge case that we were unable to find the true owner. If this happens, please report it to us and we will try to adapt for this edge case.  */
    public var owner: String?
    /** The price of the NFT, if listed or loaned. If held, staked, or burned, this is null. */
    public var price: Double?
    /** The state of the NFT */
    public var state: State?

    public init(contract: NFTOwnerAdvancedResponseContract? = nil, owner: String? = nil, price: Double? = nil, state: State? = nil) {
        self.contract = contract
        self.owner = owner
        self.price = price
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contract
        case owner
        case price
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contract, forKey: .contract)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

