#  🏦 Simple Bank Smart Contract

## Project Overview
A minimalist Ethereum smart contract that serves as a rudimentary bank, User can do the following:
1. Can deposit ETH.
2. Withdraw their funds anytime.
3. Can view and Get their account balances.
4. This project demonstrates safe handling of ether transfers to prevent reentrancy attacks and ensures individual data privacy on a public ledger.

## 📌 Features
* ****ETH Deposit Functionality:**** Users can deposit ETH into the contract using deposit().
* ****Minimum Deposit Requirement:**** The contract enforces a minimum deposit amount.
* ****User Balance Tracking:**** Each user's deposited ETH is stored.
* ****Withdrawal Functionality:**** Users can withdraw their deposited ETH.
* ****Insufficient Funds Protection:**** The contract prevents users from withdrawing more than they own.
* ****Invalid Withdrawal Protection:**** The contract blocks zero-value withdrawals.
* ****ETH Transfer Success Verification:**** Uses low-level .call() safely.
* ****Balance Checking Function:**** Users can check their stored balance.
* ****Depositor Address Storage:**** The contract keeps a list of all depositors.
* ****Checks-Effects-Interactions Pattern:**** Applied a Security pattern to reduce reentrancy risks.

## 🧠 Key Concepts Applied
* ****Mapping:**** Key-value data structure. Maps wallet addresses to balances, it is a  Efficient storage lookup.
* ****Dynamic Array:**** Stores multiple addresses in a list.
* ****Public Visibility:**** Allows external access to variables/functions.
* ****Functions:**** Reusable blocks of logic.
* ****msg.sender:**** A global variable ,an Address calling the function.
* ****Type Casting:**** Converts address into payable address.
* ****Boolean:**** Used to check if external call succeeded

## 📂 Project Structure (Files)
* ****`SimpleBank.sol`****: The core contract implementing the deposit(), withdraw(), checkBalance() functions.
* ****`SimpleBank.t.sol`****:  Unit Test (suite) containing tests to validate contract functionalities.

## Technology Stack (Technologies Used)
* ****[Solidity](https://www.soliditylang.org/)**** -  The programming language for writing the Smart contracts.
* ****[Remix IDE](https://remix.ethereum.org/)**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****[Foundry(forge, cast, anvil)](https://www.getfoundry.sh/)****  -  Development framework and testing suite.
* ****[Visual Studio Code](https://code.visualstudio.com/)**** -  Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.


## Getting Started

### Prerequisites
* Solidity Compiler, Version ^0.8.19 or higher.
* `Remix IDE` or `Foundry Development Kit`.

### Recommendation (For Beginners)
****NOTE (Use Remix IDE, for quick prototyping):****  You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the code works while trying to build yours as you keep building.

## Usage
### Building the Project (Using Remix IDE):
1. Copy the core smart contract file code `SimpleBank.sol` to Remix IDE (a browser based IDE, for quick prototyping).
2. Create a new file for the project on your Remix IDE and paste , to learn and build along faster.
3. And then Compile the smart contract file you have created on Remix IDE.

### Building the Project (Using Foundry Development Kit ) - only if you are good using foundry kit
1. Clone the repository:
   ```shell
      git clone https://github.com/legendarycode3/simplebank-smart-contract
   ```

## 📋Contract Details

## Usage Guide (How to use - When using Remix IDE)

## Why This Matters (Simple Bank Smart Contract)****

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

