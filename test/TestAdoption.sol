pragma solidity ^0.4.17;

// Used for test assertions
import "truffle/Assert.sol";
// Used to get the address of the deployed contract in test mode
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
  Adoption adoption = Adoption(DeployedAddresses.Adoption());

  // Testing the adopt() function
  function testUserCanAdoptPet() public {
    uint returnedId = adoption.adopt(8);
    uint expectedId = 8;
    Assert.equal(returnedId, expectedId, "Adoption of pet ID 8 should be recorded.");
  }

  // Testing retrieval of a single pet's owner
  function testGetAdopterAddressByPetId() public {
    address adopter = adoption.adopters(8);
    // Expected owner is this contract
    address expected = this;
    Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded.");
  }

  // Testing retrieval of all pet owners
  function testGetAdopterAddressByPetIdInArray() public {
    // Store adopters in memory rather than contract's storage
    address[16] memory adopters = adoption.getAdopters();
    // Expected owner is this contract
    address expected = this;
    Assert.equal(adopters[8], expected, "Owner of pet ID 8 should be recorded.");
  }
}
