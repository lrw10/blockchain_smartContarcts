// SPDX-License-Identifer: MIT

pragma solidity ^0.6.0;

contract Overflow {

    function overflow() public view returns (uint8) {
        uint8 big = 255;
        return big;
    }
}