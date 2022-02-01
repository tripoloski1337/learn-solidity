// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    // view can read data from blockhain
    // pure do not read anything from blockchain
    uint public num;
    function viewFunc() external view returns (uint) {
        return num;
    }

    // not change anything from blockchian
    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addToNum(uint x) external view returns (uint) {
        return num + x; // this is view because num is from global var which is from blockchain
    }

    function add(uint x, uint y) external pure returns (uint) {
        return x + y; //. this is pure since x and y only alive inside the add function
    }
}
