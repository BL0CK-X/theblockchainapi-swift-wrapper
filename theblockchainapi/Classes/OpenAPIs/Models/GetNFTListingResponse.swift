//
// GetNFTListingResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetNFTListingResponse: Codable, JSONEncodable, Hashable {

    public enum Exchange: String, Codable, CaseIterable {
        case solsea = "solsea"
    }
    /** The ID of the exchange where the NFT is listed  */
    public var exchange: Exchange?
    /** A readable version of the exchange ID  */
    public var exchangeReadable: String?
    /** The signature of the listing transaction  */
    public var listingTransactionSignature: String?
    /** The mint address of the NFT  */
    public var mintAddress: String?
    /** The price of the NFT in Lamports. Represented as an integer. */
    public var price: Double?
    /** The public key of the seller */
    public var seller: String?

    public init(exchange: Exchange? = nil, exchangeReadable: String? = nil, listingTransactionSignature: String? = nil, mintAddress: String? = nil, price: Double? = nil, seller: String? = nil) {
        self.exchange = exchange
        self.exchangeReadable = exchangeReadable
        self.listingTransactionSignature = listingTransactionSignature
        self.mintAddress = mintAddress
        self.price = price
        self.seller = seller
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case exchange
        case exchangeReadable = "exchange_readable"
        case listingTransactionSignature = "listing_transaction_signature"
        case mintAddress = "mint_address"
        case price
        case seller
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(exchange, forKey: .exchange)
        try container.encodeIfPresent(exchangeReadable, forKey: .exchangeReadable)
        try container.encodeIfPresent(listingTransactionSignature, forKey: .listingTransactionSignature)
        try container.encodeIfPresent(mintAddress, forKey: .mintAddress)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(seller, forKey: .seller)
    }
}

