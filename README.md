# Saint Tropez Yield Vault 🌴🚢

A high-performance DeFi Yield Vault infrastructure designed for luxury real estate rental management on the Ethereum blockchain.

## Overview
The Saint-Tropez Yield Vault implements a secure, non-custodial solution for managing rental yields. Built with a focus on security and efficiency, this contract allows for granular control over liquidity providers and automated distribution of rewards.

## Tech Stack
- Solidity 0.8.24: Leveraging the latest EVM features for gas efficiency and security.
- Hardhat: Industry-standard development environment for compilation and deployment.
- OpenZeppelin: Integrated security modules (ReentrancyGuard, Ownable).
- Node.js v22: Modern execution environment.

## Technical Workflow

### Installation
Initialize the professional development environment:
npm install

### Compilation
Compiles the smart contracts and generates the necessary artifacts (ABI, Bytecode) for deployment:
npx hardhat compile

## Security Architecture
- Reentrancy Protection: Integrated ReentrancyGuard to prevent recursive call attacks on yield distributions.
- Access Control: Strict Ownable pattern to ensure administrative functions are restricted to authorized entities.
- Compiler Optimization: Optimized with the latest Solc version to mitigate known EVM vulnerabilities and reduce gas costs.

## Project Structure
- contracts/: Core Smart Contract logic and inheritance trees.
- scripts/: Automated deployment and cross-chain interaction scripts.
- test/: Comprehensive unit testing suite for protocol invariant validation.
