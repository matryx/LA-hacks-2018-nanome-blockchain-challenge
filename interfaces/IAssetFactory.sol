pragma solidity ^0.4.19;

/**
 * @title IDigitalAsset
 * @dev This is an interface for the AssetFactory so that other contracts can interact with
 * AssetFactory *without* having to consume its entire bytecode. Remember: in Ethereum-land,
 * storage size and gas cost matter a lot!!
 */
interface IAssetFactory {

	function createAsset(string _name, string _description, string _identifier) public returns (address _assetAddress);
}
