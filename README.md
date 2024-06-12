# Contract
The "MyToken" contract is a basic implementation of an ERC-20 compatible token on the Ethereum blockchain.
Its primary purpose is to create a customizable token with functionalities for minting and burning tokens, 
as well as tracking token balances for different addresses.

# Description
The "MyToken" contract is designed to serve as a foundational template for creating ERC-20 compatible tokens on the Ethereum blockchain. 
It provides essential functionalities for token creation, including minting and burning tokens, along with features to track token balances for different addresses. 
With customizable variables for token name, symbol, and total supply, developers can easily deploy and manage their own token ecosystems tailored to specific use cases. 
This contract is particularly useful for projects seeking to launch their own cryptocurrencies, tokenize assets, or create utility tokens for decentralized 
applications (dApps). By leveraging the solidity code provided in the "MyToken" contract, developers can accelerate the token creation process while ensuring compliance 
with ERC-20 standards and interoperability with existing Ethereum-based services and platforms.

# Getting Started
## Installing
- To use the "MyToken" contract, you can deploy it to the Ethereum blockchain using Remix IDE, Truffle, or any other Ethereum development tool.
- Simply copy the contract code and deploy it using your preferred method.

## Executing program
- Go to the Remix website at https://remix.ethereum.org/.
- Create a new file by clicking on the "+" icon in the left-hand sidebar.
- Save the file with a .sol extension (e.g., MyToken.sol).
- Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public name = "Token";         // token name
    string public symbol = "mt";          // token abbreviation
    uint public total_supply = 0;         // total supply

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _to, uint _amount) public {
        total_supply += _amount;//total_supply = total_supply+_amount
        balances[_to] += _amount;
    }

    // burn function
    function burn(address _account, uint256 _amount) public {
        require(balances[_account] >= _amount, "Insufficient balance to burn");
        total_supply -= _amount;
        balances[_account] -= _amount;
    }
}
```
- Compile the contract and deploy it using the Remix interface.

# Help
- If you encounter any issues or have questions about using the "MyToken" contract, feel free to refer to the Solidity documentation or reach out 
to the Ethereum community for assistance.

# Authors
- name : Khushi
- contact : khush9651@gmail.com

# License
This project is licensed under the [Khushi] License - see the LICENSE.md file for details
