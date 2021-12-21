# Deploy to Hardhat node or Rinkeby testnet

<h4>Prerequisites</h4>
Node version 14.x


<h5>Initiate node project and add Hardhat dependencies</h5>

1) Initiate a node project with a `package.json`
   
      `npm init`

2) Install Hardhat

      `npm install --save-dev hardhat`

This will install Hardhat v2.8.0

3) Create hardhat project

       npx hardhat
       Create an advanced sample project
       Do you want to add a .gitignore? (Y/n) ‣ y

4) Install Hardhat project dependencies including `hardhat-waffle` and `hardhat-ethers`

      `Do you want to install this sample project's dependencies with npm (@nomiclabs/hardhat-waffle ethereum-waffle chai @nomiclabs/hardhat-ethers ethers                @nomiclabs/hardhat-etherscan dotenv eslint eslint-config-prettier eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-prettier            eslint-plugin-promise hardhat-gas-reporter prettier prettier-plugin-solidity solhint solidity-coverage)? (Y/n) ‣ y`

***IMPORTANT***
To deploy `DAOToken.sol`, please follow these preliminary steps before compiling:<br>
    a) delete `Greeter.sol` from contracts/<br>
    b) create a file `DAOToken.sol` in contracts/.  From the `john-with-hardhat` branch, copy and paste the code from `contracts/DAOToken.sol` into the new DAOToken.sol file<br>
    c) replace the code for the `hardhat.config.js` and `scripts/deploy.js` files with the code from the `john-with-hardhat` branch.
 
5) Compile contracts
   
Contracts can be compiled using hardhat without the dev node:

      npx hardhat compile

6) Deploy `DAOToken.sol` contract to local Hardhat instance

      `npx hardhat run scripts/deploy.js`

<h5>Deploy to the Rinkeby testnet</h5>

1) Add your unique data to the `.env` file:

      `ETHERSCAN_API_KEY=ABC123ABC123ABC123ABC123ABC123ABC1`<br />
      `RINKEBY_URL=https://rinkeby.infura.io/v3//<PROJECT ID>`
      `PRIVATE_KEY=0xabc123abc123abc123abc123abc123abc123abc123abc123abc123abc123abc1`
   
2) Deploy to Rinkeby testnet. Make sure to have Metamask set to the Rinkeby network with Rinkeby testnet ETH deposited.
   
       npx hardhat run scripts/deploy.js --network rinkeby
