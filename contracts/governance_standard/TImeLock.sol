// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
  // minDelay is the time gap before execution
  // proposers is the list of addresses that can put forth a proposal
  // executors is the list of addresses that can execute a proposal
  //`admin`: optional account to be granted admin role; disable with zero address  /**

  constructor(
    uint256 minDelay,
    address[] memory proposers,
    address[] memory executors,
    address admin
  ) TimelockController(minDelay, proposers, executors, admin) {}
}