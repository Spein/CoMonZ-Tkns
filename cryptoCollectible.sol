pragma solidity ^0.4.24

import '@openzeppelin-solidity/contracts/token/ERC721/ERC721.sol';

contract Commonz is ERC721 {
    constructor() ERC721("Commonz","CMZ") public {}

    struct Color{
        uint8 red;
        uint8 green;
        uint8 blue
    }

    Color[] colors;

    function mint() public {
        Color memory _color= Color(uint(now),uint(now-200),uint(now-100))
        uint _id = colors.push(_color) - 1
        _mint(msg.send,_id);

    }

    function getColorFromId(uint id) public view returns(uint8,uint8,uint8)
        return (colors[id].red,colors[id].green,colors[id].blue)
    }