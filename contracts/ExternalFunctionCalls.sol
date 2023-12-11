// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ContractOne {
    mapping(address => uint) public addressBalance;

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function deposit() public payable {
        addressBalance[msg.sender] += msg.value;
    }
}

contract ContractTwo {
    function deposit() public payable {}

    function depositOnContractOne(address _contractOne) public {
        ContractOne one = ContractOne(_contractOne);
        one.deposit{value:10, gas:100000}();
    }
}