// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Deployed on : https://sepolia.etherscan.io/address/0x6F397F4fEa82CF3Fb7048E372b9F59bf94cE1Ff8

// ERC-721 is NFT
contract DumbNFT is ERC721 {
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        // Create a NFT and send it to `sender` address
        _mint(msg.sender, 1);
    }
}