pragma solidity ^0.4.17;

import './Strings.sol';

contract TestStrings {
	using Strings for string;

	function testConcat(string _base) public pure returns (string) {
		return _base.concat("-suffix");
	}

	function findStringPosition(string _base, string _value) public pure returns (int) {
		return _base.strpos(_value);
	}
}
