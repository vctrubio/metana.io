pragma solidity >=0.5.0 <0.8.0;


contract HelloWorld {
    string public greeting = "Hello, World!";
    string public nihao;

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function setNihao(string memory _nihao) public {
        nihao = _nihao;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    function getNihao() public view returns (string memory) {
        return nihao;
    }


}

contract Ownable {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }
}

```markdown

### Advanced Solidity Concepts

2. **Inheritance**: 
   - Solidity supports inheritance, allowing you to create a new contract that inherits the properties and methods of an existing contract. This is useful for code reuse and creating complex contract hierarchies.

3. **Modifiers**: 
   - Modifiers are used to change the behavior of functions in a declarative way. They can be used for access control, validation, and more.

4. **Events**: 
   - Events are a way for contracts to communicate with the outside world. They are emitted by the contract and can be listened to by external applications, such as a web interface.

5. **Libraries**: 
   - Libraries are similar to contracts but are meant to be stateless and reusable. They can contain utility functions that can be called by other contracts.

6. **Interfaces**: 
   - Interfaces define a contract's external functions without implementing them. They are used to interact with other contracts.

7. **Fallback and Receive Functions**: 
   - The `fallback` function is a special function that is executed when a contract receives Ether without any data. The `receive` function is a newer addition that specifically handles plain Ether transfers.


'''
