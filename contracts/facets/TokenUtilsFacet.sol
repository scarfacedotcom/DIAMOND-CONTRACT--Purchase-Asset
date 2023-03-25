// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


import { LibTokenUtils } from "../libraries/LibTokenUtils.sol";
import { LibDiamond } from "../libraries/LibDiamond.sol";


contract TokenUtilsFacet {

 function addTokenDetails(string memory _tokenName,string memory _tokenSymbol, uint8 _tokenDecimal, address _tokenAggregatorAddress, address _tokenContractAddress) external{
    LibDiamond.enforceIsContractOwner();
        LibTokenUtils.addTokenDetails(_tokenName, _tokenSymbol, _tokenDecimal, _tokenAggregatorAddress, _tokenContractAddress);
    }

    function deleteTokenDetails(string calldata _tokenSymbol) external {
    LibDiamond.enforceIsContractOwner();
        LibTokenUtils.deleteTokenDetails(_tokenSymbol);
    }

}