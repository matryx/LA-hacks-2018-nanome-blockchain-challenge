

# Welcome to the LA Hacks 2018 Blockchain Challenge by Nanome Inc.

In today’s emerging blockchain ecosystem, the concept of “Digital Assets” became immediately available with the expansion of the tokenization movement and smart contract frameworks. Decentralized Applications (DAPPS) are going to be a staple in the next generation internet stack (Web3.0 et. al) and will require decentralized versions of existing architecture for our current internet.

For this Hackathon, Nanome Inc challenges you to build your own Shopping DAPP WebApp on the Ethereum Virtual Network using Solidity. We will give you a basic Smart Contract of a “Digital Asset” to start out, along with some easy deployment instructions. We want you to build a new Smart Contract to handle the purchase of these Digital Assets as well as a Web UI for the shopping experience.

This challenge allows for your team to be tested in your ability to:
Quickly build front-end interfaces for a great user experience
Build and deploy smart contracts to the Ethereum Network
Work together in a variety of roles to deliver a project in a cutting-edge technology

Submissions will be judged on the following:
Overall awesomeness and functionality
Smart Contract efficiency and performance metrics (ie: gas estimation)
Smart Contract security practices (ie: can we hack it?)
How decentralized your application is
Additional points for creative, artistic, scientific, or hilarious entries

Winning team will receive 1,000 MATRYX Tokens, media posts by Matryx and Nanome recognizing your achievement, and mentions to our 15,000+ telegram community members.

## Key technologies and hints:*
*Ethereum Solidity
*Web3
*My Ether Wallet (ERC20 Token Wallet)
*Metamask
*Truffle
*Ganache-cli / TestRPC
*Lots of Javascript

## There should be 3 main portions to your app.*
Frontend: An interface such as a WebUI that has a shopping cart like functionality where the items in the shop are the smart contracts of digital assets
ShoppingController SmartContract: Smart Contract(s) that holds the blockchain logic and tracks addresses of the Digital Assets
Digital Asset Smart Contracts: These are the items “for sale” which are Digital Assets. Each one has it’s own smart contract and an owner. There should be a lot of these. Feel free to change what code we gave you

We will post a medium article with a link to our GitHub repo where we will host the basic Digital Asset Smart Contracts as well as some additional instructions for getting started.

Best regards,
The Matryx Team
Nanome Inc.
http://www.nanome.ai/ 


## Project Usage

If using truffle then use the following:

```
truffle develop
```

```
migrate
```

```
web3.eth.defaultAccount = web3.personal.listAccounts[0]
```

Attach to the contract instance
```
assetFactory = web3.eth.contract(AssetFactory.abi).at(AssetFactory.address)
marketPlace = web3.eth.contract(Marketplace.abi).at(Marketplace.address)
```

To see what functions are available, type the name of the contract instance and add a `.` to the end + hit tab tab to view them

ie:

```assetFactory.``` and hit tab tab results in:

| marketPlace.__defineGetter__ | marketPlace.__defineSetter__     | marketPlace.__lookupGetter__    | marketPlace.__lookupSetter__   |
| marketPlace.__proto__        | marketPlace.constructor          |                                 |                                |
|                              |                                  |                                 |                                |
| marketPlace.hasOwnProperty   | marketPlace.propertyIsEnumerable | marketPlace.isPrototypeOf       | marketPlace.toLocaleString     |
| marketPlace.toString         | marketPlace.valueOf              |                                 |                                |
|                              |                                  |                                 |                                |
| marketPlace.AssetCreated     | marketPlace.AssetLeased          | marketPlace.AssetSold           | marketPlace._eth               |
| marketPlace.address          | marketPlace.allEvents            | marketPlace.assetFactoryAddress | marketPlace.createDigitalAsset |
| marketPlace.digitalAssets    | marketPlace.getOwner             | marketPlace.isOwner             | marketPlace.owner              |
| marketPlace.transactionHash  | marketPlace.transferOwnership    |                                 |                                |
|                              |                                  |                                 |                                |

To Create a Digital Asset:

```
assetFactory.createAsset("Digital Asset Name","Description","Serial Number", {gas: 3000000})
```

This should respond with a transaction hash showing that the assetFactory is created

MAX TODO

Now you can attach to the Digital Asset Instance you created

```
digitalAsset = web3.eth.contract(DigitalAsset.abi).at(<YourDigitalAssetAddress>)
```


Now that you are attached, you can call the setters or get the data from it!

```
digitalAsset.owner()
```

If you have any questions, hit us on the slack channel for LA hacks under 'nanome-challenge'
