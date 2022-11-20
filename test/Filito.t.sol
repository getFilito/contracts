// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Filito.sol";

contract FilitoTest is Test {
    Filito public filito;

    function setUp() public {
        filito = new Filito();
        filito.setBranch("IPFS");
    }

    function testGetBranch() public {
        assertEq(filito.getBranch(1), "IPFS");
    }
}
