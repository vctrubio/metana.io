# Foundations and Beginner Solidity

## Learning Objectives

- Understand the essential cryptography functions and how the blockchain works at a theoretical level
- Learn the basics of solidity and implement an ERC-20 token with non-standard features

## Deliverables

- ERC20 with God-Mode
- ERC20 with Sanctions
- ERC20 with Token Sale
- ERC20 with Token Sale and Partial Refunds

## ERC20 what is

An ERC20 token is a standard for creating tokens on the Ethereum blockchain. It defines a set of rules that all Ethereum tokens must follow, ensuring compatibility with various services and wallets.

### ERC20 Without God-Mode

- **Standard ERC20**: This is a typical implementation of the ERC20 standard. It includes basic functionalities like transferring tokens, checking balances, and approving tokens for spending by another account. It does not include any special privileges or control mechanisms beyond what the standard specifies.

### ERC20 With God-Mode

- **God-Mode**: This refers to a non-standard feature where a privileged account (often the contract owner) has special control over the token contract. This can include abilities such as:
  - Minting new tokens at will.
  - Burning tokens from any account.
  - Freezing or blacklisting accounts.
  - Pausing all token transfers.
