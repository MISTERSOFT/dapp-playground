# Learn how to create a Token or NFT

## Requirements
- Create an [Alchemy](https://dashboard.alchemy.com/) account, then create a new app on the Sepolia Network, then get the HTTP URL with your API key. This will be stored in the `.env` file.

## Config
Deployment configuration is in `hardhat.config.ts`. We need to create `.env` file based on the `.env-template`.


## Token

1. Create a contract (e.g `DumbToken`) that inherit from ERC-20 contract.
2. Compile `npm run compile`
3. Deploy `npm run deploy:testnet` (check the deploy script `deploy.ts`)


## NFT

1. Create a contract (e.g `DumbNFT`) that inherit from ERC-721 contract.
2. Compile `npm run compile`
3. Deploy `npm run deploy:testnet` (check the deploy script `deploy.ts`)