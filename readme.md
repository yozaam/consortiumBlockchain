##Two Validators to use with Parity Ethereum and allow a PoA connection;

#Tutorial:

I am on mac so first i needed to install parity ethereum and then solc ( solidity compiler );
```
bash <(curl https://get.parity.io -L) 
```
then for solc - if you dont have homebrew get it, its an absolutely amazing package manager for mac
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
```
brew tap ethereum/ethereum
brew install solidity
```
command to compile the contract
```
solc --optimize --abi --bin --metadata reportingContract.sol
```
