// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ExampleMappingStruct {
    struct Transaction {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numDeposits;
        mapping(uint => Transaction) deposits;
        uint numWithdrawals;
        mapping(uint => Transaction) withdrawals;
    }

    mapping(address => Balance) balances;

    function depositMoney() public payable {
        balances[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction({
            amount: msg.value,
            timestamp: block.timestamp
        });
        balances[msg.sender].deposits[
            balances[msg.sender].numDeposits
        ] = deposit;
        balances[msg.sender].numDeposits += 1;
    }
}
