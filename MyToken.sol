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
