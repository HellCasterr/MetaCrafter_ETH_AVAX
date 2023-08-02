# intermediate_EVM_Metacrafter
# Functions and Errors 

This Solidity program is a simple "Error handling " program that demonstrates the basic syntax and functionality of error handing in the Solidity programming language. The purpose of this program to demonstrate how error handling is done using require, revert and assert keywords.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions first one demonstrates the use of require keyword, the second one demonstrates the use of the revert keyword and third one demonstrates the use of assert . This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use gitpod , an online Solidity IDE. To get started, go to https://jeffryanpol-soliditysta-sbt87u3aw59.ws-us98.gitpod.io/

Once you are on the  website, create a new file by clicking on the "file" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FunctioError.sol). Copy and paste the following code into the file:

      // SPDX-License-Identifier: MIT
       pragma solidity ^0.8.13;

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

To compile the code, press CRTL+ SHIFT+P  then select Solidity compile contract and the program is compile sucessfully will be shown in console 
## Authors

Bhomik Jain


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
