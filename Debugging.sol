pragma solidity ^0.4.17;

contract Debugging {
    uint[] private vars;
    
    function assignment() public pure { // Debugging data in the stack
        uint val1 = 1;
        uint val2 = 2;
        
        assert(val1 != val2);
    }
    
    function memoryAlloc() public pure { // Debugging data in memory
        string memory str = "test";
        assert(bytes(str).length == 4);
    }
    
    function storageAlloc() public { // Debugging data in storage
        vars.push(2);
        vars.push(3);
        assert(vars.length == 2);
    }
}