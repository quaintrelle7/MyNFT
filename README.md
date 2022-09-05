# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```

# Hardhat

# OpenZepplin Smart Contract

- To be a valid NFT, your smart contract must implement all the methods of the ERC721 standard.
- @openzeppelin/contracts/utils/Counters.solprovides counters that can only be incremented or decremented by one. Our smart contract uses a counter to keep track of the total number of NFTs minted and set the unique ID to our new NFT. Each NFT minted using a smart contract must be assigned a unique ID—here our unique ID is just determined by the total number of NFTs in existance. For example, the first NFT we mint with our smart contract has an ID of "1," our second NFT has an ID of "2," etc.

- @openzeppelin/contracts/access/Ownable.sol sets up access control on our smart contract, so only the owner of the smart contract (you) can mint NFTs. Note, including access control is entirely a preference. If you'd like anyone to be able to mint an NFT using your smart contract, remove the word Ownable on line 9 and onlyOwner on line 16.

-  An NFT's metadata is really what brings it to life, allowing it to have additional properties, such as a name, description, image, and other attributes. 

- Every transaction sent from your virtual wallet requires a signature using your unique private key. 


###### npm Install dotenv
- create .env file to store api url and private key

###### Set the networks API_URL and Private key in hardhat.config.js

###### Deploying Smart Contract

In deploy.js:
    - ContractFactory in ethers.js is an abstraction used to deploy new smart contracts, so MyNFT here is a factory of instances of our smart contract.

    - When using the hardhat-ethers plugin ContractFactory and Contract instances are connected to the first signer by default.
Run: npx hardhat run scripts/deploy.js --network goerli

##### require('dotenv').config({ path: '/media/user/New Volume1/my-nft/artifacts/.env' });

- Give path here inside config else it'll throw error.

# Mint an NFT

## Step 3: Configure the metadata of your NFT using IPFS 

> Interplanetary File System (IPFS) is a decentralized protocol and peer-to-peer network for storing and sharing data in a distributed file system.

- Upload Image on Pinata as it's convenietn IPFS API.


- In order to be able to call the functions on our deployed contract, we need to define an ethers Signer using our wallet's private key. Next, we need to use the contract's deployed address, the contract ABI, and the aforementioned signer to define a contract instance.


#### We're all set. Let's mint our NFT by running the following command:
Minting is simply the act of publishing a unique instance of your non-fungible token on the blockchain.
Shell

node scripts/mint-nft.js