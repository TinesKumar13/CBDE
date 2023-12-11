// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract BlockchainMessenger {
    
    address public owner;
    string  public myString = "Hello World";
    uint public changeCounter;

    constructor(){
        owner = msg.sender;
    }

    function updateMyString(string memory _newMessage) public  {
        if(msg.sender == owner){
            myString = _newMessage;
            changeCounter++;
        }
    }

}