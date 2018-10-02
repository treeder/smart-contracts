# Example Smart Contracts

First, you'll want to clone OpenZeppelin so you can use it here:

```sh
git clone --depth 1 --branch master https://github.com/OpenZeppelin/openzeppelin-solidity lib/oz
rm -rf !$/.git
```

Then you can use it in your contracts like:

```solidity
import "./lib/oz/contracts/ownership/Ownable.sol";
import "./lib/oz/contracts/token/ERC20/StandardToken.sol";
```

## Token

* Update token.sol with your ticker, etc. Make sure you have private key for cbase, go make one at https://wallet.gochain.io .
* Deploy it.
  * f5 to compile in VS Code
  * get bytecode from `bin/`
  * Then deploy like this: https://medium.com/gochain/how-to-deploy-a-smart-contract-to-gochain-40de78d4d85a
* Get the checksummed address, go to myetherwallet View Wallet Info, view address only and plugin the contract address.

## Crowdsale

* Update GOCCrowdsale constructor with token address (and wallet)
* Deploy it
* Call `transferOwnership2` with contract address so that it can do the base transfers.
