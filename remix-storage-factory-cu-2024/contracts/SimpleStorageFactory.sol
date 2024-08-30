// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract SimpleStorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageFavoriteNumber) public {
        SimpleStorage mySimpleStorge = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorge.store(_simpleStorageFavoriteNumber);
    }

    function sfGet (uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorge = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorge.retrieve();
    }
}