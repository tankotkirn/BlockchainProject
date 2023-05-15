// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import "./Report.sol";
import "./Doctor.sol";

contract Master {
    
    mapping(address => address[]) public userReports;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier doctor(){
        require(msg.sender == owner, "Only doctor can change diagnosis");
        _;
    }

    modifier laboratory() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }
}