// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; // stating version for compiler

contract SimpleStorage {
    // default value for integer is zero.
    // uint256 myHeight = 160; // uint and uint256 are same. 256 represents the bits.
    // int64 myHomeNumber = 5; // the difference between uint and int is uint store only positive number while int can store both positive and negative, but not with decimals and fraction.
    // string myFirstName = "Eunjae";
    // bytes32 myLastName = "Lee"; // string is the text variabel for bytes. bytes and bytes32 are not the same
    // bool isFemale = true;
    // address myAddy; // wallet address

    uint256 public myHeight;

    function store(uint256 _myHeight) public {
        myHeight = _myHeight;
        retrieve();
    }

    function retrieve() public view returns(uint256) {
        return myHeight;
    }
}
