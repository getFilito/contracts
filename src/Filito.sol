// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/**
 _____ _ _ _ _        
|  ___(_) (_) |_ ___  
| |_  | | | | __/ _ \ 
|  _| | | | | || (_) |
|_|   |_|_|_|\__\___/ 

*/

contract Filito {

    uint256 public branchId;
    mapping(uint256 => string) branches;

    constructor() {}

    /**
    * @dev A new branch is added to the search tree.
    * @param branch_ IPFS CID.
    */
    function setBranch(string memory branch_) public {
        branchId++;
        branches[branchId] = branch_;
    }

     /**
    * @dev Get IPFS CID by branch ID.
    * @param branchId_ The branch ID.
    * @return _ IPFS CID
    */
    function getBranch(uint256 branchId_) public view returns(string memory) {
        return branches[branchId_];
    }
}
