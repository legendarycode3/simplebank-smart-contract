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

## 🧠 Key Concepts Applied
* ****Mapping:**** Key-value data structure. Maps wallet addresses to balances, it is a  Efficient storage lookup.
* ****Dynamic Array:**** Stores multiple addresses in a list.
* ****Public Visibility:**** Allows external access to variables/functions.
* ****Functions:**** Reusable blocks of logic.
* ****msg.sender:**** A global variable ,an Address calling the function.
* ****Type Casting:**** Converts address into payable address..

## 📂 Project Structure (Files)

## Technology Stack (Technologies Used)

## Getting Started

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

