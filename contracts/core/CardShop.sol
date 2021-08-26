// SPDX-License-Identifier: SimPL-2.0

pragma solidity ^0.7.0;

import "../token/Bailey.sol";
import "../authority/Member.sol";

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title The Three Kingdoms Card Shop
 *
 * @author Bit Lighthouse. Ace
 * AT: 2021-3-28 | VERSION: v1.0.2
 */
contract CardShop is Member {
    constructor(address auth_) Member(auth_) {

    }

    function buy(string memory name_) public {
        // 根据name_获取TOKEN的合约地址
        // 根据合约地址初始化ERC20
        // 根据name_拿到购卡价格
        // 用ERC20转帐
        // 判断转帐是否成功

        // 生成随机卡片种类
        // 根据种类生成随机卡片

        // 调用Card的铸造方法
        // 返回前端需要的监听函数
    }
}