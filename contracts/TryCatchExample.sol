// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract WillThrow {
    function aFunction() public pure {
        require(false, "Error Message");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    function catchError() public {
        WillThrow will = new WillThrow();

        try will.aFunction() {
            // do something
        } catch Error(string memory reason){
            emit ErrorLogging(reason);
        }
    }
}