# Todo list DApp playground

## Introduction
The purpose of this project is to try my hand on Web3 technologies by building a TODO List DApp (_DApp stands for Decentralized Application_). **Clean code is not the priority**. No real ETH are used in this project.


## Tech stack
### Languages
- [Solidity](https://docs.soliditylang.org/fr/latest/index.html)
- Vanilla Javascript
- HTML/CSS
### Libs
- [Ethers.js](https://docs.ethers.org/v5/)
- Bootstrap 5
### IDE
- VSCode
- [Remixd](https://remix.ethereum.org/)
### Browser Addons
- [Metamask](https://metamask.io/)
### Testnet
- [Sepolia](https://sepoliafaucet.com/)

## Requirements
- Metamask need to be installed or the DApp will not work.


## Try the DApp
I'm using [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) VSCode extension to serve the _index.html_.


## DApp structure
```
dapp-playground
├─ .vscode
│  └─ extensions.json
├─ LICENSE
├─ README.md
└─ src
   ├─ app.js
   ├─ contracts
   │  ├─ artifacts
   │  │  ├─ build-info
   │  │  │  ├─ 4e7df8f33d13d491bcf455e3457163ef.json
   │  │  │  └─ ec2437150e5e74627331ff338972e003.json
   │  │  ├─ TodoList.json
   │  │  └─ TodoList_metadata.json
   │  ├─ Todo.sol
   │  └─ TodoList.sol
   ├─ index.html
   └─ styles.css
```
- `src`: Contains the entire app files.
- `contracts`: Contains Solidity files and compiled files.
    - `artifacts`: Contains Solidity compiled files.
- `app.js`: Javascript logic of the DApp.
