import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import * as dotenv from 'dotenv';

dotenv.config();

const { ALCHEMY_TESTNET_API_KEY_URL, WALLET_PRIVATE_KEY } = process.env;

if (!ALCHEMY_TESTNET_API_KEY_URL) {
  throw Error('ALCHEMY_TESTNET_API_KEY_URL is empty.');
}
if (!WALLET_PRIVATE_KEY) {
  throw Error('WALLET_PRIVATE_KEY is empty.');
}

const config: HardhatUserConfig = {
  solidity: "0.8.18",
  // https://dashboard.alchemy.com/
  networks: {
    sepolia: {
      url: ALCHEMY_TESTNET_API_KEY_URL,
      accounts: [WALLET_PRIVATE_KEY]
    }
  }
};

export default config;
