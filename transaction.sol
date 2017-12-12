pragma solidity ^0.4.17;

contract Transaction {
	event SenderLogger(address);
	event ValueLogger(uint);
	
	address private owner;

	modifier isOwner { 
		require(owner == msg.sender);
		_; 
	}

	modifier validValue { 
		assert(msg.value >= 1 ether);
		_; 
	}

	function Transaction() {
		owner = msg.sender;
	}
	// The payable method is the fallback
	// It's able to hold receive payments
	// by default.
	function () payable isOwner validValue{
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
	}
	
}

