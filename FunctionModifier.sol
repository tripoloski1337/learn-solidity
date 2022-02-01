// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _; // call actual function 
    }

    function inc() external whenNotPaused {
        count += 1;
    }

    function dec() external {
        require(!paused, "paused");
        count -= 1;
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _; // call actual function
    }

    function incBy (uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    modifier sandwich(){
        //code here
        count += 10;
        _; // will back to past function and executed code inside the past function
        // then executed the code below
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}