// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleIntegers {

    uint public myInt = 1;
    uint8 public myInt8;

    function updateMyInt(uint _myInt) public {
        myInt = _myInt;
    }

    function updateMyInt8(uint8 _myInt8) public {
        myInt8 = _myInt8;
    }
}