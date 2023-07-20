// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract error {
    function testRequire(uint _value) public pure{

        require( _value>20, "Input must be greater than 20");
        }
    

function testRevert(uint _value) public pure {
    if( _value<= 100){
        revert("Input must be greater than 100");
    }


}
uint public num;
function testAssert() public view{
    assert(num== 0);
    
}
}
