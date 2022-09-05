
require('dotenv').config({ path: '/media/user/New Volume/my-nft/artifacts/.env' });
const ethers = require('ethers');

// Get Alchemy API Key
const API_KEY = process.env.API_KEY;

// Define an Alchemy Provider
const provider = new ethers.providers.AlchemyProvider('goerli', API_KEY)

//use contract abi
const contract = require("../artifacts/contracts/MyNFT.sol/MyNFT.json");

//Create a Signer

const privateKey = process.env.PRIVATE_KEY;
const signer = new ethers.Wallet(privateKey, provider)

const abi = contract.abi;
const contractAddress = '0x86F67fda98f438f6e50c5D4fecF4BA6b93000c20'

//create a contract instance

const myNftContract = new ethers.Contract(contractAddress, abi, signer)


const tokenURI = "https://gateway.pinata.cloud/ipfs/QmaVJ9Yv6tNUzyPc8NbvthYr7CCZUkRYZEeA9qoK8ZHc7J"

//call mintNFT function

const mintNFT = async () => {
    let nftTxn = await myNftContract.mintNFT(signer.address, tokenURI)
    await nftTxn.wait()
    console.log(`NFT Minted! Check it out at: https://goerli.etherscan.io/tx/${nftTxn.hash}`)
}

mintNFT()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });