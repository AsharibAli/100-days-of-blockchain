// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Bazuka is ERC721, Ownable {
    constructor(address owner) ERC721("Bazuka", "BZK") Ownable(owner) {}

    function safeMint(address to, uint256 amount) public onlyOwner {
        _safeMint(to, tokenId);
    }
}