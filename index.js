const Web3 = require('web3');
const contractABI = require('path/to/contractABI.json');

// Connect to the Ethereum network using Web3
const web3 = new Web3('https://eth-mainnet.g.alchemy.com/v2/OkaJHEzhcBf2XVWz_YRJ4qhWSDUKp_Pv');

// Create a contract instance
const contractAddress = '0x5B38Da6a701c568545dCfcB03FcB875f56beddC4'; // Replace with your contract address
const contract = new web3.eth.Contract(contractABI, contractAddress);



// Store IPFS hash in the contract
const storeIPFSHashInContract = async (ipfsHash) => {
  // Use an appropriate function from your smart contract to store the IPFS hash
  const result = await contract.methods.setIPFSHash(ipfsHash).send({ from: '0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2' });
  console.log('IPFS hash stored in the contract. Transaction:', result.transactionHash);
};


// Usage example
const ipfsHash = 'QmYzwjG3s7xCntPEjiPQWe7QszunU6doJMQqDh88KJJ4V1';
storeIPFSHashInContract(ipfsHash)
  .catch(error => {
    console.error('Error storing IPFS hash in contract:', error);
  });

  db.createCollection("Account details");

  // Insert the data into the table
  db["Account details"].insertOne({
    patient_addr: "0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db",
    doctor_addr: "0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2",
    lab_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
    contract_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4"
  });  


// Insert the second record
db["Account details"].insertOne({
    patient_addr: "0x17F6AD8Ef982297579C203069C1DbfFE4348c372",
    doctor_addr: "0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB",
    lab_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
    contract_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4"
  });
  
  // Insert the third record
  db["Account details"].insertOne({
    patient_addr: "0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C",
    doctor_addr: "0x0A098Eda01Ce92ff4A4CCb7A4fFFb5A43EBC70DC",
    lab_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
    contract_addr: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4"
  });


  db["Stack Details"].insertMany([
    {
      stack_holder_name: "Lab",
      stack_holder_wallet: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
      stack_holder_type: "Private Wallet"
    },
    {
      stack_holder_name: "Lab",
      stack_holder_wallet: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
      stack_holder_type: "Private Wallet"
    },
    {
      stack_holder_name: "Lab",
      stack_holder_wallet: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4",
      stack_holder_type: "Private Wallet"
    }
  ]);


  db.Attributes.insertMany([
    {
      reprort_id: "0x01",
      transactions_details: "transfer",
      patient_addr: "0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db"
    },
    {
      reprort_id: "0x02",
      transactions_details: "transfer",
      patient_addr: "0x17F6AD8Ef982297579C203069C1DbfFE4348c372"
    },
    {
      reprort_id: "0xa1",
      transactions_details: "transfer",
      patient_addr: "0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C"
    }
  ]);
  