pragma solidity ^0.4.17;

import "./library.sol";



contract TestLibrary {
	using IntExtended for uint;

	function testIncrement (uint _base) returns(uint) {
		return IntExtended.increment(_base);
	}
	function testDecrement (uint _base) returns(uint) {
		return IntExtended.decrement(_base);
	}
	function testIncrementByValue (uint _base, uint _value) returns(uint) {
		return IntExtended.incrementByValue(_base ,_value);
	}
	function testDecrementByValue (uint _base, uint _value) returns(uint) {
		return IntExtended.decrementByValue(_base, _value);
	}
	
}
