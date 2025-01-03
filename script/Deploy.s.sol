// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {TimestampAsserter} from "../src/TimestampAsserter.sol";

contract Deploy is Script {
    function run() public {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new TimestampAsserter{salt: bytes32(0)}();
        vm.stopBroadcast();
    }
}