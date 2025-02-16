# Solidity

## Address as a Built-In Type

Solidity has a built-in type called address that represents an Ethereum address (a 20-byte value). It’s similar to a fixed-size array of bytes, but with additional semantics (e.g., you can query its balance or send Ether to it).

## Type Conversion / Casting

When you write address(0), you are performing an explicit conversion (or cast) of the integer literal 0 to the type address.

In C, you might cast a pointer like (int\*)0 to represent a null pointer.
In Solidity, address(0) produces the “zero address” (0x0000000000000000000000000000000000000000),
