pragma solidity ^0.4.19;

import '../DigitalAsset.sol';

/**
 * @title AssetFactory
 * @dev This contract creates Digital Assets. It's often useful to create a factory contract when
 * you need many contracts that do the same thing. This contract will allow you to create as many
 * digital assets as you need.
 */
contract AssetFactory is Ownable {

  /** 
   *  @dev Creates a new digital asset smart contract
   *  @param _name Name for the asset.
   *  @param _description Description of the asset.
   *  @param _identifier Identifier for the asset.
   *  @return Address of digital asset smart contract.
   */
  function createAsset(string _name, string _description, string _identifier) public onlyOwner returns (address assetAddress)
  {
    address newDigitalAsset = new DigitalAsset(_name, _description, _identifier);
    return newDigitalAsset;
  }
}
