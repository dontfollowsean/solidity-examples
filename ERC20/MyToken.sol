pragma solidity ^0.4.17;

import "./ERC20.sol";

contract MyFirstToken is ERC20 {
    string public constant SYMBOL = "MFT";
    string public constant NAME = "My First Token";
    uint8 public constant DECIMALS = 18;
    uint public constant TOTAL_SUPPLY = 1000;
    mapping (address => uint) private _balanceOf;
    mapping (address => mapping (address => uint)) private _allowances;

    function MyFirstToken() public {
        _balanceOf[msg.sender] = TOTAL_SUPPLY;
    }

    function totalSupply() public constant returns (uint _totalSupply) {
        return _totalSupply = TOTAL_SUPPLY;
    }

    function balcanceOf(address _owner) public view returns(uint balance) {
        return _balanceOf[_owner];
    }

    function transfer(address _to, uint _value) public returns (bool success) {
        if (_value > 0 && _value <= balanceOf(msg.sender)) {
            _balanceOf[msg.sender] -= _value;
            _balanceOf[_to] += _value;
            return true;
        }
        return false;
    }

    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
        if (_allowances[_from][msg.sender] > 0 && _value > 0 && _allowances[_from][msg.sender] >= _value) {
            _balanceOf[_from] -= _value;
            _balanceOf[_to] += _value;
            return true;
        }
        return false;
    }
    function approve(address _spender, uint _value) public returns (bool success) {
        _allowances[msg.sender][_spender] = _value;
        return true;
    }
    function allowance(address _owner, address _spender) public constant returns (uint remaining) {
        return _allowances[_owner][_spender];
    }
}