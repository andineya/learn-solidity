pragma solidity ^0.8.26; // memberi tahu compiler kalo kita pake versi 0.8.26 sampai yang lebih baru tapi kurang dari 0.9.0

contract myContract {
    string public myString = "Hello, World!";
}

contract Marketplace {
    address public seller;
    uint balance; // unsigned int 256 bit [default]  (positif saja)
    int32 price; // int 32 bits (positif dan negatif)
    
    modifier onlySeller() { // fungsi yang bisa ngubah behavior suatu fungsi lain. cara kerjanya dia ngecek kondisi dulu sblm diexecute
        require(
            msg.sender == seller,
            "Only seller can sell items."
            );
            _;
    }

event purchasedItem(address buyer, uint price); // action yang ada di dalam contract
    function buy() public payable {
        emit purchasedItem(msg.sender, msg.value);
    }
}

contract Bank{
    address payable seller; // variabel dengan tipe data address 20 bits yang menyimpan address wallet dan 'payable' yang bisa menerima ether
    address payable buyer;

    // function transfer(address buyer, uint price) {
    //     buyer.transfer(price)
    // }
}