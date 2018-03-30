var AssetFactory = artifacts.require("./Factories/AssetFactory.sol");
var Marketplace = artifacts.require("./Marketplace.sol");

module.exports = function(deployer) {
	deployer.deploy(Marketplace, AssetFactory.address).then(()=>
  	{
  		// Marketplace has been deployed.
  		// Do things (with the assurance that it has an address) here.
  	});
};
