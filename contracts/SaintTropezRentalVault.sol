// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract SaintTropezRentalVault is Ownable, ReentrancyGuard {
    IERC721 public immutable propertyNFT;
    IERC20 public immutable paymentToken;

    uint256 public totalRentalIncome;

    constructor(address _nftAddress, address _tokenAddress) Ownable(msg.sender) {
        propertyNFT = IERC721(_nftAddress);
        paymentToken = IERC20(_tokenAddress);
    }

    function depositRentalIncome(uint256 _amount) external onlyOwner {
        require(paymentToken.transferFrom(msg.sender, address(this), _amount), "Transfer failed");
        totalRentalIncome += _amount;
    }

    function claimYield(uint256 _tokenId) external nonReentrant {
        require(propertyNFT.ownerOf(_tokenId) == msg.sender, "Not the owner");
        // Simple 1% share logic for the example
        uint256 share = totalRentalIncome / 100; 
        require(paymentToken.transfer(msg.sender, share), "Claim failed");
    }
}