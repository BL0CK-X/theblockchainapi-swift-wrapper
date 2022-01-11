# Swift5 API client for theblockchainapi

# About

Our vision is to make it super easy to interact with the decentralized web. We want you to be able to do this in any coding language and do it easily and quickly. 

You're a key part of our vision. We love feature requests! <a href=\"#section/Feature-Requests\">Make one!</a>

# How to Use the API

To use the API, you simply need to create an API key pair.

Doing so takes less than a minute. Simply go to <a target=\"_blank\" href=\"https://dashboard.blockchainapi.com\">the dashboard</a>, create an account, and generate a key pair. You can now use this pair to make API requests. You must create your first pair via the dashboard.

# Feature Requests

Got a feature request? Submit it as an issue on <a target=\"_blank\" href=\"https://github.com/BL0CK-X/the-blockchain-api/issues/new/choose\">our GitHub repo</a> or [email us](mailto:info@blockchainapi.com).

# Contact

<figure>
    <img 
        width=\"40px\"
        height=\"40px\" 
        src=\"https://theblockchainapi-docs.s3.amazonaws.com/icons/phone.svg\"
    />
    <figcaption style=\"textAlign:center;\">Text / Call: +1 (415) 888 4745 </figcaption>
</figure> <a href=\"mailto:info@blockchainapi.com\" target=\"_blank\">
    <figure>
        <img 
            width=\"40px\"
            height=\"40px\" 
            src=\"https://theblockchainapi-docs.s3.amazonaws.com/icons/email.svg\"
        />
        <figcaption style=\"textAlign:center;\">Email us: info@theblockchainapi.com</figcaption>
    </figure>
</a> <a href=\"https://discord.gg/d49yzrZRAF\" target=\"_blank\">
    <figure>
        <img 
            width=\"40px\"
            height=\"40px\" 
            src=\"https://theblockchainapi-docs.s3.amazonaws.com/icons/discord.svg\"
        />
        <figcaption style=\"textAlign:center;\">Join our Discord</figcaption>
    </figure>
</a> <a href=\"https://twitter.com/_BlockX_\" target=\"_blank\">
    <figure>
        <img 
            width=\"40px\"
            height=\"40px\" 
            src=\"https://theblockchainapi-docs.s3.amazonaws.com/icons/twitter.svg\"
        />
         <figcaption style=\"textAlign:center;\">Follow us on Twitter</figcaption>
    </figure>
</a> <a href=\"https://github.com/BL0CK-X/the-blockchain-api\" target=\"_blank\">
    <figure>
        <img 
            width=\"40px\"
            height=\"40px\" 
            src=\"https://theblockchainapi-docs.s3.amazonaws.com/icons/github.svg\"
        />
        <figcaption style=\"textAlign:center;\">Star us on Github</figcaption>
    </figure>
</a>

# Security

Common dogma is to never give out your seed phrase. We agree. It's a matter of security, and anyone who has your seed phrase can irreversibly empty your wallet. 

<b>When using an API endpoint that requires a seed phrase, we highly recommend that users use or create a wallet that they do not use as their primary wallet.</b> 

How you make this work depends on what you're doing. If you're minting an NFT for example, we recommend creating a new wallet and then transferring just enough SOL to that wallet to mint the NFT. This is possible on Solana because such transactions cost less than a penny. We will have more tutorials in the future that make it easier for you to be secure when using our API.

We have easy-to-use endpoints for <a href=\"#tag/Solana-Wallet/paths/~1solana~1wallet~1secret_recovery_phrase/post\">creating a new seed phrase</a> and then <a href=\"#tag/Solana-Wallet/paths/~1solana~1wallet~1public_key/post\">deriving a public key</a> to enable you to transfer to that new wallet.

Let's have a constructive dialog about this. Feel free to <a href=\"#section/Contact\">contact us</a>. I made a video discussing this matter <a target=\"_blank\" href=\"https://youtu.be/m9unUb8Z9qU\">here</a>.

Note: We have had a couple of individuals harrass and threaten us. These individuals did <b>not</b> try our API or speak to anyone who has used it. They simply saw that we require a seed phrase for certain endpoints and figured that the proper response was to attack us. (I explain why we do <a target=\"_blank\" href=\"https://youtu.be/m9unUb8Z9qU\">here</a>.) Such harrassment and threats are not only harmful, but they are also illegal, and we will report offenders. Do not harrass us. Rather, feel free to discuss your concerns with us and we will be more than happy to work with you to come up with a solution.

# Pricing

<b>Each user receives 500 free credits.</b>

You can learn more about our pricing <a href=\"https://dashboard.blockchainapi.com/billing\" target=\"_blank\">here</a>. 

We frequently do custom plans. If our pricing doesn't work for you, <a href=\"#section/Contact\">contact us</a>.

If you have questions, concerns, feedback, or ideas, <a href=\"#section/Contact\">contact us</a>.

# SDKs / API Wrappers

We have examples using both our <a href=\"https://github.com/BL0CK-X/the-blockchain-api/tree/main/examples\" target=\"_blank\">Python wrapper and our JavaScript wrapper here</a>.

We have built a custom <a href=\"https://github.com/BL0CK-X/the-blockchain-api-python-wrapper\" target=\"_blank\">Python wrapper</a>.

`pip install theblockchainapi`

We also have published a <a href=\"https://github.com/BL0CK-X/theblockchainapi-javascript-wrapper\" target=\"_blank\">JavaScript Wrapper</a>.

`npm install theblockchainapi`

We also have auto-generated wrappers for the following languages:
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-go-wrapper\" target = \"_blank\">Go</a>
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-java-wrapper\" target = \"_blank\">Java</a>
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-kotlin-wrapper\" target = \"_blank\">Kotlin</a>
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-php-wrapper\" target = \"_blank\">PHP</a>
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-swift-wrapper\" target = \"_blank\">Swift5</a>
- <a href=\"https://github.com/BL0CK-X/theblockchainapi-typescript-wrapper\" target = \"_blank\">TypeScript</a>

If you would like a different language as well, submit an issue <a href=\"https://github.com/BL0CK-X/theblockchainapi-wrappers/issues/new\" target=\"_blank\">here</a>.

If you run into any bugs with the wrappers, submit an issue <a href=\"https://github.com/BL0CK-X/theblockchainapi-wrappers/issues/new\" target=\"_blank\">here</a>.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: null
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.blockchainapi.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FileAPI* | [**uploadFile**](docs/FileAPI.md#uploadfile) | **POST** /file | Upload a file
*SolanaAccountAPI* | [**solanaGetAccount**](docs/SolanaAccountAPI.md#solanagetaccount) | **GET** /solana/account/{network}/{public_key} | Get the details of an account on Solana
*SolanaAccountAPI* | [**solanaGetAccountIsCandyMachine**](docs/SolanaAccountAPI.md#solanagetaccountiscandymachine) | **GET** /solana/account/{network}/{public_key}/is_candy_machine | Get if account is candy machine
*SolanaAccountAPI* | [**solanaGetAccountIsNFT**](docs/SolanaAccountAPI.md#solanagetaccountisnft) | **GET** /solana/account/{network}/{public_key}/is_nft | Get if account is NFT
*SolanaCandyMachineAPI* | [**solanaCreateTestCandyMachine**](docs/SolanaCandyMachineAPI.md#solanacreatetestcandymachine) | **POST** /solana/nft/candy_machine | Create a test CM
*SolanaCandyMachineAPI* | [**solanaGetAllNFTsFromCandyMachine**](docs/SolanaCandyMachineAPI.md#solanagetallnftsfromcandymachine) | **GET** /solana/nft/candy_machine/{network}/{candy_machine_id}/nfts | Get CM&#39;s NFTs  
*SolanaCandyMachineAPI* | [**solanaGetCandyMachineMetadata**](docs/SolanaCandyMachineAPI.md#solanagetcandymachinemetadata) | **POST** /solana/nft/candy_machine/metadata | Get a CM&#39;s metadata 
*SolanaCandyMachineAPI* | [**solanaListAllCandyMachines**](docs/SolanaCandyMachineAPI.md#solanalistallcandymachines) | **GET** /solana/nft/candy_machine/list | List all CMs
*SolanaCandyMachineAPI* | [**solanaMintFromCandyMachine**](docs/SolanaCandyMachineAPI.md#solanamintfromcandymachine) | **POST** /solana/nft/candy_machine/mint | Mint from a CM
*SolanaCandyMachineAPI* | [**solanaSearchCandyMachines**](docs/SolanaCandyMachineAPI.md#solanasearchcandymachines) | **POST** /solana/nft/candy_machine/search | Search CMs
*SolanaNFTAPI* | [**solanaCreateNFT**](docs/SolanaNFTAPI.md#solanacreatenft) | **POST** /solana/nft | Create an NFT on Solana
*SolanaNFTAPI* | [**solanaGetNFT**](docs/SolanaNFTAPI.md#solanagetnft) | **GET** /solana/nft/{network}/{mint_address} | Get an NFT&#39;s metadata
*SolanaNFTAPI* | [**solanaGetNFTMintFee**](docs/SolanaNFTAPI.md#solanagetnftmintfee) | **GET** /solana/nft/mint/fee | Get the NFT mint fee
*SolanaNFTAPI* | [**solanaGetNFTOwner**](docs/SolanaNFTAPI.md#solanagetnftowner) | **GET** /solana/nft/{network}/{mint_address}/owner | Get owner of an NFT
*SolanaNFTAPI* | [**solanaGetNFTsCandyMachineId**](docs/SolanaNFTAPI.md#solanagetnftscandymachineid) | **POST** /solana/nft/candy_machine_id | Get the ID of the candy machine of an NFT 
*SolanaNFTAPI* | [**solanaSearchNFTs**](docs/SolanaNFTAPI.md#solanasearchnfts) | **POST** /solana/nft/search | Search NFTs on Solana
*SolanaSPLTokenAPI* | [**solanaGetSPLToken**](docs/SolanaSPLTokenAPI.md#solanagetspltoken) | **GET** /solana/spl-token/{network}/{public_key} | Get SPL token metadata
*SolanaTransactionAPI* | [**solanaGetTransaction**](docs/SolanaTransactionAPI.md#solanagettransaction) | **GET** /solana/transaction/{network}/{tx_signature} | Get the details of a transaction made on Solana
*SolanaWalletAPI* | [**solanaDeriveAssociatedTokenAccountAddress**](docs/SolanaWalletAPI.md#solanaderiveassociatedtokenaccountaddress) | **GET** /solana/wallet/{public_key}/associated_token_account/{mint_address} | Derive an associated token account address
*SolanaWalletAPI* | [**solanaDerivePrivateKey**](docs/SolanaWalletAPI.md#solanaderiveprivatekey) | **POST** /solana/wallet/private_key | Derive private key
*SolanaWalletAPI* | [**solanaDerivePublicKey**](docs/SolanaWalletAPI.md#solanaderivepublickey) | **POST** /solana/wallet/public_key | Derive public key
*SolanaWalletAPI* | [**solanaGeneratePrivateKey**](docs/SolanaWalletAPI.md#solanagenerateprivatekey) | **POST** /solana/wallet/generate/private_key | Generate private key
*SolanaWalletAPI* | [**solanaGenerateSecretRecoveryPhrase**](docs/SolanaWalletAPI.md#solanageneratesecretrecoveryphrase) | **POST** /solana/wallet/generate/secret_recovery_phrase | Generate secret phrase
*SolanaWalletAPI* | [**solanaGetAirdrop**](docs/SolanaWalletAPI.md#solanagetairdrop) | **POST** /solana/wallet/airdrop | Get an airdrop on devnet
*SolanaWalletAPI* | [**solanaGetBalance**](docs/SolanaWalletAPI.md#solanagetbalance) | **POST** /solana/wallet/balance | Get wallet&#39;s balance in SOL or any SPL
*SolanaWalletAPI* | [**solanaGetNFTsBelongingToWallet**](docs/SolanaWalletAPI.md#solanagetnftsbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/nfts | Get address&#39;s NFTs
*SolanaWalletAPI* | [**solanaGetTokensBelongingToWallet**](docs/SolanaWalletAPI.md#solanagettokensbelongingtowallet) | **GET** /solana/wallet/{network}/{public_key}/tokens | Get address&#39;s tokens and respective balances
*SolanaWalletAPI* | [**solanaTransfer**](docs/SolanaWalletAPI.md#solanatransfer) | **POST** /solana/wallet/transfer | Transfer SOL, a token, or an NFT to another address


## Documentation For Models

 - [ATAResponse](docs/ATAResponse.md)
 - [Account](docs/Account.md)
 - [AccountContext](docs/AccountContext.md)
 - [AccountIsCandyMachine](docs/AccountIsCandyMachine.md)
 - [AccountIsNFT](docs/AccountIsNFT.md)
 - [AccountValue](docs/AccountValue.md)
 - [AirdropRequest](docs/AirdropRequest.md)
 - [B58PrivateKey](docs/B58PrivateKey.md)
 - [BalanceRequest](docs/BalanceRequest.md)
 - [BalanceResponse](docs/BalanceResponse.md)
 - [CandyMachineSearchRequest](docs/CandyMachineSearchRequest.md)
 - [CreateTestCandyMachineRequest](docs/CreateTestCandyMachineRequest.md)
 - [CreateTestCandyMachineResponse](docs/CreateTestCandyMachineResponse.md)
 - [GeneratePrivateKey](docs/GeneratePrivateKey.md)
 - [GetAllNFTsResponse](docs/GetAllNFTsResponse.md)
 - [GetAllNFTsResponseMintedNfts](docs/GetAllNFTsResponseMintedNfts.md)
 - [GetAllNFTsResponseUnmintedNfts](docs/GetAllNFTsResponseUnmintedNfts.md)
 - [GetCandyMachineIDRequest](docs/GetCandyMachineIDRequest.md)
 - [GetCandyMachineIDResponse](docs/GetCandyMachineIDResponse.md)
 - [GetCandyMetadataErrorResponse](docs/GetCandyMetadataErrorResponse.md)
 - [GetCandyMetadataRequest](docs/GetCandyMetadataRequest.md)
 - [GetCandyMetadataResponse](docs/GetCandyMetadataResponse.md)
 - [GetCandyMetadataResponseCreators](docs/GetCandyMetadataResponseCreators.md)
 - [GetFileResponse](docs/GetFileResponse.md)
 - [GetPublicKeyRequest](docs/GetPublicKeyRequest.md)
 - [GetSPLTokenResponse](docs/GetSPLTokenResponse.md)
 - [ListNFTsResponse](docs/ListNFTsResponse.md)
 - [MintNFTErrorResponse](docs/MintNFTErrorResponse.md)
 - [MintNFTRequest](docs/MintNFTRequest.md)
 - [MintNFTResponse](docs/MintNFTResponse.md)
 - [NFT](docs/NFT.md)
 - [NFTData](docs/NFTData.md)
 - [NFTMintErrorResponse](docs/NFTMintErrorResponse.md)
 - [NFTMintFee](docs/NFTMintFee.md)
 - [NFTMintRequest](docs/NFTMintRequest.md)
 - [NFTOwnerResponse](docs/NFTOwnerResponse.md)
 - [NFTSearchRequest](docs/NFTSearchRequest.md)
 - [NFTSearchResponse](docs/NFTSearchResponse.md)
 - [PrivateKey](docs/PrivateKey.md)
 - [PublicKey](docs/PublicKey.md)
 - [SecretPhrase](docs/SecretPhrase.md)
 - [SecretRecoveryPhrase](docs/SecretRecoveryPhrase.md)
 - [Transaction](docs/Transaction.md)
 - [TransactionResult](docs/TransactionResult.md)
 - [TransferRequest](docs/TransferRequest.md)
 - [TransferResponse](docs/TransferResponse.md)
 - [UploadFileRequest](docs/UploadFileRequest.md)
 - [Wallet](docs/Wallet.md)


## Documentation For Authorization


## APIKeyID

- **Type**: API key
- **API key parameter name**: APIKeyID
- **Location**: HTTP header

## APISecretKey

- **Type**: API key
- **API key parameter name**: APISecretKey
- **Location**: HTTP header


## Author

info@blockchainapi.com

