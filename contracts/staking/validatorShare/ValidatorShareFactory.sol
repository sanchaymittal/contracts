pragma solidity ^0.5.2;

import {ValidatorShare} from "./ValidatorShare.sol";

contract ValidatorShareFactory {
    /**
    - factory to create new validatorShare contracts
   */

    function create(
        uint256 validatorId,
        address loggerAddress,
        address governance
    ) public returns (address) {
        ValidatorShare validatorShare = new ValidatorShare(
            validatorId,
            loggerAddress,
            msg.sender,
            governance
        );
        validatorShare.transferOwnership(msg.sender);
        return address(validatorShare);
    }

}
