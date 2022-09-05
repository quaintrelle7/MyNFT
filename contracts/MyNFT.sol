// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() public ERC721("MyNFT", "NFT") {}

    function mintNFT(address recipient, string memory tokenURI)
        public onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
// contract MyNFT is ERC721URIStorage, Ownable{

// using Counters for Counters.Counter;
// Counters.Counter private _tokenIds;

// //MyNFT is Smart Contract's name
// //NFT is Symbol
// //Refer Openzeppelin Github repo

// constructor() public ERC721("MyNFT", "NFT" ){}

// // tokenURI is a string that should resolve a json document
// //that describes NFT's metadata.

// // mintNFT calls some methods from the inherited ERC721 library,
// //  and ultimately returns a number that 
// // represents the ID of the freshly minted NFT.


// function mintNFT(address recipient, string memory tokenURI)
//  public onlyOwner 
//  returns(uint256)
// {
// _tokenIds.increment();
// uint256 newItemId = _tokenIds.current();
// _mint(recipient, newItemId);
// _setTokenURI(newItemId, tokenURI);
// return newItemId;
// }

// }