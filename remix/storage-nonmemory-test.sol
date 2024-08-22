// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract StorageExample {
    int[] public numbers;

    function getNumbers() public returns (int[] memory, int[] memory) {
        numbers.push(1);
        numbers.push(2);

        int[] storage newNumbers = numbers;

        newNumbers[0] = 3;

        return (numbers, newNumbers);
    }
}