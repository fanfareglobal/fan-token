pragma solidity ^0.4.24;

import "ds-test/test.sol";

import "./FAN.sol";

contract FANTest is DSTest {
    FAN token;

    function setUp() public {
        token = new FAN();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
