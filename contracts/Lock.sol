pragma solidity ^0.8.0;

contract Whitelist{
    uint8 public maxWhitelistedAddresses;
    mapping(address => bool) whitelistedAddresses;
    uint8 public numAddressesWhitelisted;
    constructor(uint8 _maxWhitelistedAddresses ) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public{
        require(!whitelistedAddresses[msg.sender],"to check that the address doesnt repeat");
        require(numAddressesWhitelisted < maxWhitelistedAddresses,"to check maxwhitelistaddress is not greater than number of white list addresss");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}