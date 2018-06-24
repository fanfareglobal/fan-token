pragma solidity ^0.4.24;

import "ds-test/test.sol";

import "./FanToken.sol";

contract FanTokenTest is DSTest {
    FanToken token;

    function setUp() public {
        token = new FanToken();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
