// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HighGasUse {
    mapping(uint256 => uint256) public bigMap;
    // 函数用来消耗指定的gas
    function justUseGas() public {
        // 获取剩余gas数
        uint256 gasbegin = gasleft();
        bigMap[1] = 1;
        // 计算可迭代数量
        uint256 iterations = gasleft() / (gasbegin-gasleft()) -2;

        for (uint256 i = 0; i < iterations; i++) {
            // 执行一些消耗gas的操作
            bigMap[i] = i;
            
        }
    }
}