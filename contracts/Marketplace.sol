pragma solidity ^0.4.19;

import '../interfaces/IAssetFactory.sol';
import '../interfaces/IDigitalAsset.sol';
import './Ownable.sol';

/**
 * @title Marketplace
 * @dev This contract represents your digital asset marketplace. Add as many features as you want
 * and feel free to get creative!
 */
contract Marketplace is Ownable
{
	address public assetFactoryAddress;

	address[] public digitalAssets;

	// Some events for inspiration. Feel free to add to these or write your own!
	event AssetCreated(address creator, address assetAddress);
	event AssetSold(address seller, address buyer, address assetAddress);
	event AssetLeased(address lessor, address lessee, uint256 leasingPeriod, address assetAddress);

	/** 
	 *  @dev Marketplace constructor
	 */
	function Marketplace(address _assetFactoryAddress) public
	{
		assetFactoryAddress = _assetFactoryAddress;
	}

	function createDigitalAsset(string _name, string _description, string _identifier) public
	{
		address newAsset = IAssetFactory(assetFactoryAddress).createAsset(_name, _description, _identifier);
		digitalAssets.push(newAsset);
	}

	/***                 YOUR WORK HERE!                ***/







	/*                (And everywhere else!)              */
}