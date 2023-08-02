// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CollegeAdmission_Eligiblity {
    address public owner;
    mapping(address => uint256) public highSchoolPercentages;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    function setHighSchoolPercentage(address student, uint256 percentage) external onlyOwner {

        require(percentage >= 0 && percentage <= 100, "Invalid percentage value");

    
        highSchoolPercentages[student] = percentage;
    }

    function admitStudent(address student) external view onlyOwner {

        require(highSchoolPercentages[student] > 90, "Student must have more than 90% in high school");
        
      
    }

    function assertExample(uint256 x) external pure {
        assert(x != 0);
       
    }

    function revertExample(uint256 x) external pure  {
        if (x == 0) {
            revert("Input must be non-zero");
        }
        
    }
}
