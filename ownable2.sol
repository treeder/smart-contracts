pragma solidity ^0.4.24;


/**
 * @title Ownable
 * @dev The Ownable contract has an owner address, and provides basic authorization control
 * functions, this simplifies the implementation of "user permissions".
 */
contract Ownable2 {
    address public owner;
    // owner2 is typically used for contracts
    // could use a mapping for this in case we want more owners: mapping (uint => address) accountIndex; then checking in onlyOwner you could iterate until zero address
    address public owner2;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
    * @dev The Ownable constructor sets the original `owner` of the contract to the sender
    * account.
    */
    constructor() public {
        owner = msg.sender;
    }

    /**
    * @dev Throws if called by any account other than the owner.
    */
    modifier onlyOwner() {
        require(msg.sender == owner || msg.sender == owner2);
        _;
    }

    /**
    * @dev Allows the current owner to transfer control of the contract to a newOwner.
    * @param newOwner The address to transfer ownership to.
    */
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function transferOwnership2(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner2, newOwner);
        owner2 = newOwner;
    }

}