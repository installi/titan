// SPDX-License-Identifier: SimPL-2.0

pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

import "../authority/Member.sol";

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * @title The Three Kingdoms Hero Card Token (721)
 *
 * @author Bit Lighthouse. Ace
 * AT: 2021-3-28 | VERSION: v1.0.3
 */
contract CardToken is ERC721, Member {
    constructor(address auth_) ERC721(_name, _symbol)
        Member(auth_) {

    }
}