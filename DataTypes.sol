pragma solidity ^0.4.17;

contract DataTypes {
	bool myBool = false;

	int8 myInt = -1;				//-128 - 127
	uint8 myUInt = 0;				// 0 - 255. when a uint is created it is initially 0

	string myString;				// an array of uint8. you cannot pass an array of 
									// strings because solidity will not handle nested arrays
	
	uint8[] myStringArr;

	byte myValue; 					// byte is an alias for byte1
	bytes1 myBytes1;
	bytes32 myBytes32;

	// fixed256x8 myFixed; 			// specified fixed point number in this case, 
									// 256bits with eight decimal places.
									// not yet implemented in solidity
	// ufixed256x8 myUFixed

	enum Color { Red, Green, Blue}
	Color color = Color.Red;		// Enum works similar to the Enum in other langauges
	
	address myAddress;
	function assignAddress() {
		myAddress = msg.sender;
		myAddress.balance;
		myAddress.transfer(10);
	}

	uint[] myIntArr = [0, 1, 2, 3];	// An array without a fixed length can have values added to it
	function arrFunc() {
		myIntArr.push(4);
		myIntArr.length;
		myIntArr[0]					// Access a specific array value using its index.
	}
	uint[10] fixedArr;				// An array with a fixed length will throw an out of bound exception
									// if you try to push a value past its set length.

	struct Account {				// Structs are like objects without functionality. Think of structs from C
		uint balance;
		uint dailyLimit;
	}
	Account myAccount;
	function structFunc() {
		myAccount.balance = 100;
	}
	

	mapping (address => Account) _accounts;			// Mapping that maps addresses to accounts
	function () payable {							// Fallback function that will be called by default
		_accounts[msg.sender].balance += msg.value;
	}
	function getBalance () returns(uint) {
		return _accounts[msg.sender].balance;
	}
	
	
	
}
							