import { ethers } from "hardhat";

async function main() {
  // Load NFT contract
  const DumbNFT = await ethers.getContractFactory("DumbNFT");
  // Deploy NFT
  const deployedNFTContract = await DumbNFT.deploy("Dumb NFT", "DNFT");
  // Wait deployment to be done
  await deployedNFTContract.deployed();

  // Load NFT contract
  const DumbToken = await ethers.getContractFactory("DumbToken");
  // Deploy NFT
  const deployedTokenContract = await DumbToken.deploy("Dumb Token for tutorial", "DT$");
  // Wait deployment to be done
  await deployedTokenContract.deployed();


  // Display NFT & Token contracts deployment addresses
  console.log(`DumbNFT contract deployed to : ${deployedNFTContract.address}`);
  console.log(`DumbToken contract deployed to : ${deployedTokenContract.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
