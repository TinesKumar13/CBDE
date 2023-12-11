// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleAddresses {

    address public someAddress;

    function updateAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getBalance() public view returns(uint) {
        return someAddress.balance;
    }

}