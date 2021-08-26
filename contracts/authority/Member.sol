/**
 * @title Authority Of Administrator & Members
 *
 * @author Bit Lighthouse. Henry Mo
 * AT: 2021-07-02 | VERSION: v1.0.2
 */

// SPDX-License-Identifier: SimPL-2.0

pragma solidity ^0.7.0;

import "./Authority.sol";

import "@openzeppelin/contracts/access/Ownable.sol";

contract Member is Ownable {
    // Authority's manager
    Authority public authority;

    constructor(address authority_) {
        authority = Authority(authority_);
    }

    /**
     * @notice Check Operator Permit - modifier
     * @param permit_ name of permit
     */
    modifier CheckPermit(string memory permit_) {
        require(
            authority.permits(msg.sender, permit_),
            "Member: The operation is not allowed"
        );
        _;
    }

    /**
     * @notice Check Operation Permit - modifier
     * @param name_ name of permit
     */
    modifier CheckStatus(string memory name_) {
        require(
            !authority.authorities(address(0), "ALL") ||
            !authority.authorities(address(0), name_) ||
            !authority.authorities(msg.sender, "ALL") ||
            !authority.authorities(msg.sender, name_),
            "Member: The operation is not allowed"
        );
        _;
    }
    
    /**
     * @notice Set new manager
     * @param authority_ address of manager
     *
     * This function is onwer only
     */
    function setAuthority(address authority_) external
        onlyOwner {
        
        authority = Authority(authority_);
    }
}