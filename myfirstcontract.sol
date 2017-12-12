pragma solidity ^0.4.17;

interface Regulator {
	function checkValue(uint amount) returns(bool);
	function loan() returns(bool);
			
}


contract Bank is Regulator {

	uint private val;

	function Bank(uint amount) {
		value = amount;
	}

	function deposit(uint amount) {
		value += amount;		
	}

	function withdram (uint amount) {
		if(checkValue(amount)){
			value -= amount;
		}
	}
	
	function balance () returns(uint) {
		return value;
	}
	
	function checkValue(uint amount) returns(bool) {
		return vale >= amount;
	}
	function loan() returns(bool) {
		return value > 0;
	}	
}

contract MyFirstContract is Bank(10) {
	

	string private name;
	uint private age;

	function setName(string newName) {
		name = newName;
	}

	function getName() returns(string) {
		return name;
	}

	function setAge(uint newAge) {
		age = newAge;
	}

	function getAge() returns(uint) {
		return age;
	}

}

