 /**
 * @title Authority Of Administrator & Contract
 *
 * @author Bit Lighthouse. Henry Mo
 * AT: 2021-07-02 | VERSION: v1.0.2
 */

// SPDX-License-Identifier: SimPL-2.0

pragma solidity ^0.7.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Authority is Ownable {
    // Member of administrator or contract
    mapping (string => address) public members;

    // Permit of members
    mapping (address => mapping(string => bool)) public permits;

    // Authority of users
    mapping (address => mapping(string => bool)) public authorities;

    /**
     * @notice Set member of administrator or contract
     *
     * @param member_ member's address
     * @param name_   name of member
     *
     * This function is onwer only
     */
    function setMember(string memory name_, address member_)
        external onlyOwner {
        
        members[name_] = member_;
    }

    /**
     * @notice Set member's permit
     *
     * @param member_ member's address
     * @param permit_ name of permit
     * @param enable_ enable this member's permit
     *
     * This function is onwer only
     */
    function setPermit(string memory permit_, address member_, bool enable_)
        external onlyOwner {
        
        permits[member_][permit_] = enable_;
    }

    /**
     * @notice Set balck list of user or contract
     *
     * @param member_ member's address
     * @param permit_ name of permit
     * @param enable_ enable this member's permit
     *
     * This function is onwer only
     */
    function setBlackList(string memory permit_, address member_, bool enable_)
        external onlyOwner {
        
        authorities[member_][permit_] = enable_;
    }
}