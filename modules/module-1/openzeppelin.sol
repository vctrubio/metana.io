pragma solidity >=0.5.0 <0.8.0;

import "openzeppelin-solidity/contracts/access/Ownable.sol";
import "openzeppelin-solidity/contract/token/ERC20/extensions/ERC20Burnable.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenTown is ERC20 {
    constructor() ERC20("TokenTown", "TKT") {
        // Who can mint
        // minting restriction? or unlimited?
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}

contract TKTMint is TokenTown {
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

contract AdminToken is ERC20, Ownable {
    constructor() ERC20("AdminMint", "AMT") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

// A token is essentially a smart contract deployed on a blockchain that keeps track of balances and allows transfers.
// When people say “token”, they usually mean an ERC-20 contract deployed on Ethereum (or similar blockchains like Polygon, BSC, Arbitrum).

//  What is ERC-20 Good For?

// ERC-20 is the most common token standard in Ethereum. It’s used for:
// ✅ Cryptocurrencies & Stablecoins → USDT, DAI, USDC, etc.
// ✅ Utility Tokens → Used inside dApps (e.g., AAVE, UNI, LINK).
// ✅ Governance Tokens → Voting rights in DAOs (e.g., MKR, COMP).
// ✅ Reward Systems → Loyalty points, staking rewards.
// ✅ Fundraising (ICO/IDO) → New projects raise funds using ERC-20 tokens.
//
//
// ABI - Application Binary Interface
// defines the interface between your contact and the outside world
