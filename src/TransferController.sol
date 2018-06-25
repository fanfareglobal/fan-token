pragma solidity ^0.4.23;

import "ds-stop/stop.sol";
import "erc20/erc20.sol";
import "./TokenController.sol";
import "./Controlled.sol";

contract TransferController is DSStop, TokenController {

    function changeController(address _token, address _newController) public auth {
        Controlled(_token).changeController(_newController);
    }

    function proxyPayment(address _owner) payable public returns (bool)
    {
        return false;
    }

    function onTransfer(address _from, address _to, uint _amount) public returns (bool)
    {
        // if the controller is not stopped(stopped is false), return false by default. 
        return stopped;
    }

    function onApprove(address _owner, address _spender, uint _amount) public returns (bool)
    {
        return true;
    }
}