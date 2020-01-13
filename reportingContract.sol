pragma solidity ^0.5.15;
// Use this file for your reporting contract.



  contract ReportingContract { 
  // These will be the address of your validator0 and validator1 nodes
  address[] public validators = [0x8B0E86bCDEFB05596BC9c27E3FEffF9fE77312D9,0xcECE984d7c0bc5523c8D86b4D389a4414e0804a9];
  mapping(address => uint) indices; 
  address public disliked; 

  constructor() public { 
    for (uint i = 0; i < validators.length; i++) { 
      indices[validators[i]] = i; 
    } 
  } 

  // Called on every block to update node validator list. 
  function getValidators() public view returns (address[] memory) { 
    return validators; 
  } 

  // Expand the list of validators. 
  function addValidator(address validator) public { 
    validators.push(validator); 
  } 

  // Remove a validator from the list. 
  function reportMalicious(address validator) public { 
    validators[indices[validator]] = validators[validators.length-1]; 
    delete indices[validator]; 
    delete validators[validators.length-1]; 
    validators.pop(); 
  } 

  function reportBenign(address validator) public { 
    disliked = validator; 
  } 
}
