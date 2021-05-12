pragma solidity ^0.4.24;

contract MyFirstContract 
    {
    uint256 public myVariable;
    bool public auctionActive;
    
    function setMyVar(uint256 _myVariable) 
    public 
        {
        assert(_myVariable > 100);    
        myVariable = _myVariable;
        }
        
    function getMyVar() 
    public view returns(uint256)
        {
        return myVariable;
        }
        
    function toggle()
    public 
        {
        if(auctionActive)
            {
            auctionActive = false;
            }
        else
            {
            auctionActive = true;
            }
        }
    
    constructor()
    public 
        {
        setMyVar(0);
        auctionActive = false;
        }
    }
