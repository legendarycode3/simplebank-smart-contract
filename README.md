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
2. Navigate to the directory you created and cloned the file to:
   ```shell
        cd simplebank-smart-contract
   ```
3. Compile the smart contract: `forge build`

### Testing the contract (Using Foundry Development Kit )
Runing all tests:
   ```shell
        forge test
   ```
Runing specific test:
   ```shell
         forge test --mt testFunctionName
   ```

## 📋Contract Details
### Functions:
* ****`deposit()`:**** Allows user to be able to deposit Eth into their address.
* ****`withdrawal()`:**** function that allows a user to withdraw their funds from the smart contract.
* ****`checkBalance()`:****  function that allows a user to check their own internal balance within the smart contract.

### Variables:
* ****`s_depositors`:**** A variable that store the users that deposited.
* ****`s_balances`:**** Ledger mapping address to their balances.
* ****`MINIMUM_ETH`:**** Variable for the minimum  value , needed to be deposited.

## Usage Guide (How to use - When using Remix IDE)

## Why This Matters (Simple Bank Smart Contract)****
The Simple Bank smart contract matters in Web3 because it provides:
1. ****Removal of Intermediaries:**** They eliminate the need for banks, bankers, or central servers to manage deposits and withdrawals, enabling peer-to-peer, self-custodied finance.
2. ****Automation and Speed:**** Transactions are executed automatically upon meeting conditions (e.g., sufficient balance), reducing delays associated with traditional banking.
3. ****Transparency and Trust:**** The contract code is visible on the blockchain, allowing anyone to verify the rules.
4. ****Immutability:**** Once deployed, the contract logic cannot be altered, ensuring the bank always functions as designed.
5. ****24/7 Availability:**** Unlike human-staffed banks, smart contracts operate on blockchain infrastructure without downtime.
6. A foundational, trustless, and automated framework for managing digital assets, acting as a "vending machine" for banking services without needing a traditional intermediary.

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

