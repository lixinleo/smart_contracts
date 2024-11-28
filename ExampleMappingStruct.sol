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

    mapping(address => Balance) public balances;

    function getDeposit(address _from, uint numberOfDeposit) public view returns (Transaction memory) {
        return balances[_from].deposits[numberOfDeposit];

    }

    function depositMoney() public payable {
        balances[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction({
            amount: msg.value,
            timestamp: block.timestamp
        });
        balances[msg.sender].deposits[balances[msg.sender].numDeposits] = deposit;

        balances[msg.sender].numDeposits += 1;
    }

    function withDrawMoney(address payable _to, uint _amount) public {
        balances[msg.sender].totalBalance -= _amount;
        

        Transaction memory withdrawal = Transaction({
            amount: _amount,
            timestamp: block.timestamp
        });

        balances[msg.sender].withdrawals[balances[msg.sender].numWithdrawals] = withdrawal;

        balances[msg.sender].numWithdrawals += 1;
        _to.transfer(_amount);

    }
}
