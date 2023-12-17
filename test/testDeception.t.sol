// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/deception/Setup.sol";
import "../src/deception/Deception.sol";

contract testDeception is Test {
    Setup setup;
    deception target;

    function setUp() public {
        setup = new Setup();
        target = setup.TARGET();
    }

    function testAttackDeception() public {
        target.solve("secret");
        assertTrue(setup.isSolved());
    }
}
