// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Goerli {

    string public myString = "Hello World";
    
    function updateMyString(string memory _updateString) public payable {
        if(msg.value == 1 ether){
          myString = _updateString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}