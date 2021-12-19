// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts@4.4.0/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;
    uint256 public requiredOwners;
    address[] public owners;

    //constructor(uint256 _totalSupply, string memory _name, string memory _symbol) ERC20(_name, _symbol) {
    constructor(uint256 _totalSupply) ERC20("MyToken", "TKN") {
        //function _mint(address account, uint256 amount) internal virtual {
        _mint(msg.sender, _totalSupply);
        owner = msg.sender;
        owners.push(msg.sender);
    }

    function addOwners(address _member) public {
        owners.push(_member);
    }

    function arrayLength() public view returns (uint256) {
        return owners.length;
    }

    // [X] define total supply
    // [ ] distribute ICO amounts to team members
    // [ ] set an initial price
    // [ ] function to allow for token transfer
    // [X] assign entire initial supply to ERC20 creator
    // [ ] assign initial supply to other team members

    // [X] free transfer from original creator to other team members

    // [X] ability to transfer token between team members
}
