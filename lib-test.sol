// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library LibraryExample {
    function pow(uint a, uint b) public view returns (uint, address) {
        return (a ** b, address(this));
    }
}

contract ContractWithLibExample {
    using LibraryExample for uint;
    address owner = address(this);

    function getPow(uint base, uint power) public view returns (uint, address) {
        return base.pow(power);
    }

    function getChain() public view returns (uint) {
        return block.chainid;
    }
}