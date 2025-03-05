pragma solidity ^0.8.26; // to tell the compiler that we use between 0.8.26 and 0.9.0

contract myContract {
    string public myString = "Hello, World!";
}

contract Marketplace {
    address public seller;
    uint balance; // unsigned int 256 bit [default]  (positive only)
    int32 price; // int 32 bits (positive and negative)
    
    modifier onlySeller() { // a function that can change other's function behavior. it check the condition first before making an execution
        require(
            msg.sender == seller,
            "Only seller can sell items."
            );
            _;
    }

event purchasedItem(address buyer, uint price);
    function buy() public payable {
        emit purchasedItem(msg.sender, msg.value);
    }
}

contract Bank{
    address payable seller; // an wallet-address typed variabel. its lenght is 20 bits. represents an addy and 'payable' properties that can recieve ether
    address payable buyer;

    // function transfer(address buyer, uint price) {
    //     buyer.transfer(price)
    // }
}
