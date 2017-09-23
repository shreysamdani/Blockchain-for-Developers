var BettingContract = artifacts.require("BettingContract");

module.exports = function(deployer) {
	var testOutcomes = [1, 2, 3];
	deployer.deploy(BettingContract, testOutcomes);
};
