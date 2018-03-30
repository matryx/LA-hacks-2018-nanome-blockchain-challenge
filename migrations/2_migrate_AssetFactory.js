var AssetFactory = artifacts.require("./Factories/AssetFactory.sol");

module.exports = function(deployer) {
  deployer.deploy(AssetFactory);
};
