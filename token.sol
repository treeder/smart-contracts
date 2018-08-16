pragma solidity ^0.4.24;

import "./ownable2.sol";
import "./lib/oz/contracts/token/ERC20/StandardToken.sol";
import "./lib/oz/contracts/token/ERC20/DetailedERC20.sol";

contract UberToken is DetailedERC20, StandardToken, Ownable2 {

    address public cbase; // coinbase for initial supply

    // ------------------------------------------------------------------------
    // Constructor
    // ------------------------------------------------------------------------
    constructor() public {
        symbol = "DEMO";
        name = "DEMO Tokens";
        decimals = 18;
        totalSupply_ = 1000000000000000000000000000; // 1B
        cbase = 0xADDRESS_FOR_COINBASE; // Change this to an address you own, this is where the initial supply will live
        balances[cbase] = totalSupply_;
        emit Transfer(address(0), cbase, totalSupply_);
    }


    /**
    * @dev Function to mint tokens
    * @param _to The address that will receive the minted tokens.
    * @param _value The amount of tokens to mint.
    * @return A boolean that indicates if the operation was successful.
    */
    function transferFromBase(address _to, uint256 _value) onlyOwner public returns (bool) {
      // ALMOST THE SAME AS NORMAL transfer(..), but from coinbase
        require(_to != address(0));
        require(_value <= balances[cbase]);

        balances[cbase] = balances[cbase].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(cbase, _to, _value);
        return true;
    }
}
