// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/security/Pausable.sol";

contract DegenToken is ERC20, Ownable {
    string[] public availableItems;
    mapping(uint256 => uint256) public costs;
    mapping(address => mapping(uint256 => bool)) public hasRedeemed;

    constructor() ERC20("Degen", "DGN") {
        // Initialize available items
        availableItems.push("Item 1");
        availableItems.push("Item 2");
        availableItems.push("Item 3");
        availableItems.push("Item 4");

        // Define costs for each item
        costs[0] = 100; // Cost for Item 1
        costs[1] = 200; // Cost for Item 2
        costs[2] = 300; // Cost for Item 3
        costs[3] = 400; // Cost for Item 4
    }

    function createTokens(address recipient, uint256 quantity) external onlyOwner {
        _mint(recipient, quantity);
    }

    function destroyTokens(uint256 quantity) public {
        _burn(msg.sender, quantity);
    }

    function transferTokensTo(address recipient, uint256 quantity) external onlyOwner {
        _transfer(msg.sender, recipient, quantity);
    }

    function claimItem(uint256 itemId) public {
        require(itemId < availableItems.length, "Invalid item");
        uint256 itemCost = costs[itemId];
        require(balanceOf(msg.sender) >= itemCost, "Not enough tokens");
        require(!hasRedeemed[msg.sender][itemId], "Item already claimed");

        // Burn tokens to pay for the item
        _burn(msg.sender, itemCost);
        
        // Mark item as claimed by the user
        hasRedeemed[msg.sender][itemId] = true;
    }

    function checkRedeemedItems(address user) public view returns (bool[] memory) {
        bool[] memory redeemedStatus = new bool[](availableItems.length);
        for (uint256 i = 0; i < availableItems.length; i++) {
            redeemedStatus[i] = hasRedeemed[user][i];
        }
        return redeemedStatus;
    }
}
