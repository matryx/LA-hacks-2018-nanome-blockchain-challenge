pragma solidity ^0.4.19;

/**
 * @title IDigitalAsset
 * @dev This is an interface for a DigitalAsset so that other contracts can interact with
 * DigitalAssets *without* having to consume their entire bytecode. Remember: in Ethereum-land,
 * storage size and gas cost matter a lot!!
 */
interface IDigitalAsset {

  function setName(string _name) public;
  function setDescription(string _description) public;
  function setIdentifier(string _identifier) public;
}
