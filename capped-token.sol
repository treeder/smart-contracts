pragma solidity ^0.4.24;

import "./lib/oz/contracts/token/ERC20/ERC20Pausable.sol";
import "./lib/oz/contracts/token/ERC20/ERC20Capped.sol";
import "./lib/oz/contracts/token/ERC20/ERC20Detailed.sol";

contract CappedToken is ERC20Detailed, ERC20Capped, ERC20Pausable {

    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
    constructor() 
    ERC20Detailed("DEMO Tokens", "DEMO", 18) 
    ERC20Capped(1000000000000000000000000000) // 1B
    public {}
}
