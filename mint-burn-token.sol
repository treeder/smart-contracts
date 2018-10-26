pragma solidity ^0.4.24;

import "./lib/oz/contracts/token/ERC20/ERC20Detailed.sol";
import "./lib/oz/contracts/token/ERC20/ERC20Pausable.sol";
import "./lib/oz/contracts/token/ERC20/ERC20Mintable.sol";
import "./lib/oz/contracts/token/ERC20/ERC20Burnable.sol";

contract MintBurnToken is ERC20Detailed, ERC20Mintable, ERC20Burnable, ERC20Pausable {

    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
    constructor() 
    ERC20Detailed("DEMO Tokens", "DEMO", 18)
    public {}
}
