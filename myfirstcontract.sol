pragma solidity ^0.4.17;

contract Bank {

	uint private val;

	function Bank(uint amount) {
		value = amount;
	}

	function deposit(uint amount) {
		value += amount;		
	}

	function withdram (uint amount) {
		value -= amount;
	}
	
	function balance () returns(uint) {
		return value;
	}
	
	function loan() returns(bool);	
			
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

	function loan() returns(bool) {
		return true; // cannot create contract without 
					 //implementation for all abstract functions.
	}
	
	
}

