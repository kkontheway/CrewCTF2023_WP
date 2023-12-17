// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

/// @notice You can imagine this contract as respect among gang members
contract respectToken is ERC20, Ownable {
    constructor() ERC20("respect", "respect") {}

    function mint(address reciever, uint256 amount) external onlyOwner {
        _mint(reciever, amount);
    }

    function burn(address sender, uint256 amount) external onlyOwner {
        _burn(sender, amount);
    }
}
