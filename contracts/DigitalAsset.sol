pragma solidity ^0.4.19;

import './Ownable.sol';
import '../interfaces/IDigitalAsset.sol';

/**
 * @title DigitalAsset
 * @dev This contract represents a digital asset of some kind (a movie, a song, a sculpture, book, 
 * piece of software, etc). Feel free to add to or change this however you see fit :)
 */
contract DigitalAsset is Ownable, IDigitalAsset {
  string public name;
  string public description;
  string public identifier;

  /** 
   *  @dev DigitalAsset constructor
   */
  function DigitalAsset(string _name, string _description, string _identifier) public
  {
    name = _name;
    description = _description;
    identifier = _identifier;
  }

  /** 
   *  @dev Marketplace constructor
   *  @param _name New name for the asset.
   */
  function setName(string _name) public onlyOwner
  {
    name = _name;
  }

  /** 
   *  @dev Sets the description of the asset.
   *  @param _description New description for the asset.
   */
  function setDescription(string _description) public onlyOwner
  {
    description = _description;
  }

  /** 
   *  @dev Marketplace constructor
   *  @param _identifier New identifier for the asset.
   */
  function setIdentifier(string _identifier) public onlyOwner
  {
    identifier = _identifier;
  }
}
