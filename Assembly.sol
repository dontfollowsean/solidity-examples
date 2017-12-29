pragma solidity ^0.4.17;

contract Assembly {
    function nativeLoop() public pure returns (uint _r) {
        for (uint i = 0; i < 10; i++) {
            _r++;
        }
    }

    function asmLoops() public returns (uint _r) {
        assembly {
            let i := 0
            loop:
            i := add(i,1)
            _r := add(_r, 1)
            jumpi(loop, lt(i, 10))
        }
    }

    function nativeConditional(uint _v) public pure returns (uint) {
        if (5 == _v) {
            return 55;
        } else if (6 == _v) {
            return 66;
        }
        return 11;
    }

    function asmConditional(uint _v) public returns (uint _r) {
        
    }

}