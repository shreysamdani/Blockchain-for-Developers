pragma solidity ^0.4.15;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/BettingContract.sol";

contract TestBettingContract {
	// 0x8480f2154aF1056fF25316030701a4134F132e81
	BettingContract betting = BettingContract(DeployedAddresses.BettingContract());

	function testChooseOracle() {
		address oracle = betting.chooseOracle(0xf1C6DBDc292FD222Ceb93A968DD15d70C2D64845);
		address expected = betting.oracle();
		Assert.equal(oracle, expected, "Oracle chosen by Owner should be registered.");
	}

	function testMakeBet() {
		address exampleA = 0x06AEe2c00C49f7376340F11aCda4dA19B206f978;
		// address exampleB = 0x930D26600E105ba545e860AAaC19C248819005A8;
		// betting.getCurrAddress.call({from:exampleA});
		bool boolA = betting.makeBet.value(5)(1);
		// , {from: exampleA, value: 50}
		// bool boolB = betting.makeBet(2);
		address gamblerA = betting.gamblerA();
		Assert.equal(boolA, true, "GamblerA should be set correctly.");
		Assert.equal(gamblerA, exampleA, "GamblerA should be set to correct address.");
	}

	// function testCheckOutcomes() {
	// 	uint[] outcomes;
	// 	outcomes.push(1);
	// 	outcomes.push(2);
	// 	outcomes.push(3);
	// 	uint[] storage expected = betting.checkOutcomes();
	// 	Assert.equal(outcomes, expected, "Outcomes should be the array declared in ../migrations/2_deploy_contracts.js.");
	// }

}
