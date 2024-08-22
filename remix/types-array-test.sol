// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesArrayExample {
    uint[6] data;
    int[] data2;

    function arrayExample() public returns (uint[6] memory) {
        data = [10, 20, 30, 40, 50, 60];

        return data;
    }

    function arrayDynamicExample() public returns (int[] memory) {
        data2 = [-10, -20, -30, -40];
        data2.push(-50);

        return data2;
    }
}