pragma solidity ^0.8.5; 

import "./ERC20.sol";

contract MyERC20 is ERC20 {
    
    address public admin;
    
    constructor() ERC20('Deej Token', "DEEJ") {
        _mint(msg.sender, 1000000 * 10 ** 18);
        admin = msg.sender;
    }
    
    modifier adminOnly() {
        require(admin == msg.sender, "only admin");
        _;
    }
    
    function mint(address to, uint amount) external adminOnly {
        _mint(to, amount);
    }
    
    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
    
}