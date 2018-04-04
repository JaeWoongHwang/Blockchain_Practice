pragma solidity ^0.4.18;

contract Greeting {
    // Define variable of string type
    string message = "Hello Solidity";
    string name = "Solidity";
    function getMessage() public view returns(string) {
        return message;
    }

    // Function of returning parameters
    function getName() public view returns(string){
        return name;
    }
}
