// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// return multiple outputs
// named outputs
// destructuring assignment

contract FunctionOutputs{

    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function named() public pure returns (uint x, bool b) {
        return (1, true);
    }
    
    function assigned() public pure returns (uint x, bool b) {
        // saved more gas
        x = 1;
        b = true;
    }

    function destructuringAssignments() public pure {
        (uint x, bool b) = returnMany();
        // (, bool b) = returnMany();
        // (uint x,) = returnMany();
    }

}