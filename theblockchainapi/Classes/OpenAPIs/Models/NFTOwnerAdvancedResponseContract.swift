//
// NFTOwnerAdvancedResponseContract.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The contract the NFT interacted with most recently. If there is none, this is null.  */
public struct NFTOwnerAdvancedResponseContract: Codable, JSONEncodable, Hashable {

    public enum ContractType: String, Codable, CaseIterable {
        case marketplace = "marketplace"
        case otc = "otc"
        case loan = "loan"
        case staking = "staking"
        case burned = "burned"
    }
    /** The type of the contract that it last interacted with */
    public var contractType: ContractType?
    /** The string identifier (not the public key) that we denote the contract with. */
    public var contractId: String?
    /** The public key of the contract */
    public var contractBlockchainIdentifier: String?
    /** The readable name of the contract (e.g., Magic Eden) */
    public var contractName: String?

    public init(contractType: ContractType? = nil, contractId: String? = nil, contractBlockchainIdentifier: String? = nil, contractName: String? = nil) {
        self.contractType = contractType
        self.contractId = contractId
        self.contractBlockchainIdentifier = contractBlockchainIdentifier
        self.contractName = contractName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contractType = "contract_type"
        case contractId = "contract_id"
        case contractBlockchainIdentifier = "contract_blockchain_identifier"
        case contractName = "contract_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contractType, forKey: .contractType)
        try container.encodeIfPresent(contractId, forKey: .contractId)
        try container.encodeIfPresent(contractBlockchainIdentifier, forKey: .contractBlockchainIdentifier)
        try container.encodeIfPresent(contractName, forKey: .contractName)
    }
}

