// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Array - dynamic or fixed size
// Initialization
// insert (push), get, update, delete, pop, length
// creating array in memory
// returning array from function

contract Array {
    // dynamic array 
    uint[] public nums = [1,2,3];
    // fixed size array
    uint[3] public numsFixed = [4,5,6];

    function examples() external {
        nums.push(4); // nums will have 4 [1,2,3,4]
        uint x = nums[1];
        nums[2] = 777; // nums will 1,2,777,4
        delete nums[1];
        nums.pop(); // remove the last element
        uint len = nums.length;

        // create array in memory
        uint[] memory a = new uint[](5);
        a[1] = 123;
    }

    function returnArray() external view returns (uint[] memory) {
        // the bigger array the bigger gas being used
        return nums;
    }

}