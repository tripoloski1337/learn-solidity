// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint public count;

    function inc() external { // since we will modify count from blockchain
        count += 1;
    }

    function dec() external {
        count -= 1;
    }

    function show() external view returns (uint) {
        return (count);
    }
}