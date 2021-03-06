pragma solidity ^0.4.11;

import "../../contracts/SGPay/SGPayCrowdsaleK.sol";


/**
 * @title SampleCrowdsale
 * @dev This is an example of a fully fledged crowdsale.
 * The way to add new features to a base crowdsale is by multiple inheritance.
 * In this example we are providing following extensions:
 * HardCappedCrowdsale - sets a max boundary for raised funds
 * RefundableCrowdsale - set a min goal to be reached and returns funds if it's not met
 *
 * After adding multiple features it's good practice to run integration tests
 * to ensure that subcontracts works together as intended.
 */
contract MockSGPayCrowdsaleK is SGPayCrowdsaleK {

  function MockSGPayCrowdsaleK(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet, address controller, address _presale, uint256 _cap, address _vaultAddr)
  SGPayCrowdsaleK(_startTime, _endTime, _rate, _wallet, controller, _presale, _cap, _vaultAddr)
  {

  }

  function diluteCaps() public {
    // diluting all caps by 10^6 for testing
    tokenCap = tokenCap.div(1e6);
  }
}
