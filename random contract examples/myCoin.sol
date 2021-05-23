//SPDX-License-Identifier: MIT 

pragma solidity ^0.6.2;

contract myCoin
{
    uint256 public tSupply;
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => uint256)) public allowed;
    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _owner, address indexed _spender, uint _value);
    
    constructor(uint256 supply) public
    {
        tSupply = supply;
        balances[msg.sender] = supply;
    }
    
    function totalSupply() public view returns(uint)
    {
        return tSupply;
    }
    
    function balancesOf(address _owner) public view returns (uint)
    {
        return balances[_owner];
    }
    
    function allowance(address _owner, address _spender) public view returns (uint remaining)
    {
        return allowed[_owner][_spender];
    }
    
    function transfer(address _to, uint _value) public returns (bool)
    {
        require(balances[msg.sender] >= _value);
        //zero sum
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
    
    function approve(address _spender, uint _value) public returns (bool)
    {
        require(balances[msg.sender] >= _value, "Insufficient funds.");
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    
    //Check if someone is authorized to transfer funds from an owner to a third party on behalf of the owner
    // if so, performs the transfer
    function transferFrom(address _from, address _to, uint _value) public returns (bool)
    {
        require(allowed[_from][msg.sender] >= _value, "Cannot perform transfer");
        //update owner balance
        balances[_from] -= _value;
        //update recipeient balance
        balances[_to] += _value;
        //update use of some authorized funds already
        allowed[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
        return true;
    }
    
    //original wallet address:
    //mediator wallet address:
    //destination wallet address:
    
}
