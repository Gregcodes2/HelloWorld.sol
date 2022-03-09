// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract HelloWorld {
    uint256 TotalCoin;
    uint256 CoinPrice;
    uint256 Mcap;
    address public owner;

    constructor() public {
        
     owner = msg.sender;
}
 modifier onlyOwner {
    	//is the message sender owner of the contract?
        require(msg.sender == owner);
        
        _;
    }
 // Input price of coin, total supply of coin   
function coinpriceandsupply(uint256 _PriceofCoin, uint256 _Totalsupply) public{  
       CoinPrice = _PriceofCoin;
        TotalCoin = _Totalsupply;
}
// click to calculate marketcap
function CalcMarketcap() public payable returns (uint256){
    //Marketcap is calculated as Total supply multiplied by Price of coin
    Mcap = TotalCoin * CoinPrice;
    return Mcap; 
}
//Getmarketcap to view result 
function getmarketcap() public view returns (uint256){
    return Mcap;
}
}
