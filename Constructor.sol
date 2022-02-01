// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public x;

    constructor(uint _x) { // called once, when the smartcontract deployed
        owner = msg.sender;
        x = _x;
    }
}