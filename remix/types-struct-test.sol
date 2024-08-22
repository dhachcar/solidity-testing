// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesStructExample {
    struct Book {
        string title;
        string author;
        uint book_id;
    }

    Book book;

    function setBook() public {
        book = Book('Solidity for Dummies', 'DIO', 1);
    }

    function getBookTitle() public view returns (string memory) {
        return book.title;
    }

    function getBook() public view returns (Book memory) {
        return book;
    }
}