pragma solidity ^0.4.17;

/**
 * The Strings library extends the functionality of strings
 */
library Strings {
	function concat(string _base, string _value) internal pure returns (string) {
		bytes memory _baseBytes = bytes(_base);
		bytes memory _valueBytes = bytes(_value);

		string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
		bytes memory _newValue = bytes(_tmpValue);

		uint i;
		uint j;

		for (i = 0; i < _baseBytes.length; i++) {
			_newValue[j++] = _baseBytes[i];
		}

		for (i = 0; i < _valueBytes.length; i++) {
			_newValue[j++] = _valueBytes[i];
		}

		return string(_newValue);
	}
}

contract TestStrings {
	using Strings for string;

	function testConcat(string _base) public pure returns (string) {
		return _base.concat("-suffix");
	}
}

