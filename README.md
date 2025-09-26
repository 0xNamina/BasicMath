# BasicMath

Basic mathematical operations with overflow/underflow handling using unchecked blocks and manual validation.

## Description

This smart contract implements safe arithmetic operations for addition and subtraction with explicit overflow and underflow detection. The contract returns both the result and an error flag to indicate if the operation was successful.

## Features

- **Addition with overflow detection**: Returns error flag if overflow occurs
- **Subtraction with underflow detection**: Returns error flag if underflow would occur
- **Manual validation**: Uses unchecked blocks with custom error handling

## Deployment Instructions

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file and copy-paste the contract code
3. Compile the contract using Solidity ^0.8.20
4. Deploy on **Base Sepolia Testnet**
5. Interact with the functions:
   - `adder(uint _a, uint _b)` - Add two numbers with overflow check
   - `subtractor(uint _a, uint _b)` - Subtract two numbers with underflow check

## Submit Exercise

[📖 Submit Deployment Exercise](https://docs.base.org/learn/deployment-to-testnet/deployment-to-testnet-exercise)
