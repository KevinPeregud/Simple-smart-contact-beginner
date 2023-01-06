// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Greeting {
    // set global variables
    string public name;
    string public greetingPrefix = "Hello " ;
    // space after Hello,then when you get greeting it will be two words
    // Hello Tom and not HelloTom

    constructor(string memory initialName) {
        name = initialName;
    }
       // function to set new name
    function setName(string memory newName) public {
        name = newName;       
    }
    //getter function for get greeting
    function getGreeting() public view returns(string memory) {
       return string(abi.encodePacked(greetingPrefix, name)); 
    } 
}