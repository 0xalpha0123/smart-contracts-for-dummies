// SPDX-License-Identifier: MIT 

pragma solidity ^0.6.0;

contract testing
{
    address payable public owner;
    address public caller; //store who called last 
    uint public gasprc;
    address payable public txorig;
    uint public quantity;
    
    constructor() public
    {
        owner = msg.sender;
    }
    
    
    function secondsBetweenWeeks(uint startWeek, uint stopWeek) public pure returns(uint, uint, uint)
    {
        uint val1 = (1 weeks * stopWeek) - (startWeek * 7 days);
        uint val2 = (stopWeek - startWeek) * 7 days;
        uint val3 = stopWeek * 7 days - startWeek * 1 weeks;
        
        return (val1, val2, val3);
    }
    
    function equivalence() public
    {
        bool test1 = 1 wei == 1;
        bool test2 = 1 gwei == 1e9;
        bool test3 = 1 ether == 1e18;
        
        assert(test1 && test2 && test3);
        this.test();
    }
    
    receive() external payable
    {
    }
    
    function previousHash() public view returns(bytes32)
    {
        return blockhash(block.number - 1);
    }
    
    function calculateCalpoly() public pure returns(bytes20)
    {
        bytes memory shahash = abi.encode(sha256(bytes('calpoly')));
        bytes20 ripenhash = ripemd160(shahash);
        return ripenhash;
    }
    
    function permutate(uint x) public returns(uint)
    {
        caller = msg.sender;
        gasprc = tx.gasprice;
        txorig = tx.origin;
        for(uint i = x; i > 0; i--)
        {
            quantity = quantity * x;
        }
        return quantity;
    }
    
    function test() public
    {
        caller = msg.sender;
        gasprc = tx.gasprice;
        txorig = tx.origin;
    }
    
        function destroyMe() public
        {
            require(msg.sender == owner);
            selfdestruct(owner);
        }
    
}
