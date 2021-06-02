pragma solidity 0.4.24;

// File: contracts/token/WBTC.sol

contract eUSDToken is StandardToken, DetailedERC20("BIRTE", "EUSD", 8) {

    function burn(uint value) public onlyOwner {
        super.burn(value);
    }

    function finishMinting() public onlyOwner returns (bool) {
        return false;
    }

    function renounceOwnership() public onlyOwner {
        revert("renouncing ownership is blocked");
    }
}