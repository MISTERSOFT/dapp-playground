// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Deployed on : https://sepolia.etherscan.io/address/0x9d3B85F4ce94876c3360F2f971BE580C21B62fAc

contract DumbToken is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // Create 1 wei Token and send it to `sender` address
        // Note: 1 DT$ (name of the token) is 1 * 10 ** 18
        _mint(msg.sender, 1);
    }
}