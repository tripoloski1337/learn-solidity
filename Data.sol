// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint public u = 1234; // uint = uin256 0 to 2**256 - 1
                          //        uint8  0 to 2**8 - 1
                          //        uint16 0 to 2**16 - 1
    int public i = -123;  // int = int156 -2**256 to 2**255 - 1
                          //       int128 -2**127 to 2**127 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0xc9d3CE570e557B153c4d03c5b3de8d0a0aa35898;
    bytes32 public b32 = 0x27cbdf5c69e92758372acb6540960cbe359fffa303b7b3452f4906f83653f366; // 32 bytes
}