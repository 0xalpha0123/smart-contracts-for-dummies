# Build your first Ethereum smart contract!

What you'll need:
- MetaMask chrome extension - download here: https://metamask.io/
- Ganache Personal ETH Blockchain Platform: https://www.trufflesuite.com/ganache

## Setting up your Blockchain Wallet on MetaMask
1. On Ganache, select the "Quickstart ETH" option
2. Copy your mnemonic into a text file (you'll need it for reference consistently throughout this project!)

![mnemonic](https://user-images.githubusercontent.com/44534814/117739534-6b285600-b1b3-11eb-88d9-f425e261c148.png)

3. Fire up MetaMask, and choose "Import Wallet"
4. Paste your mnemnic from Ganache into the "Seed phrase" blank, set up your own password of choice
5. Your account should look like this: <MetaMask.png>  

![metamask](https://user-images.githubusercontent.com/44534814/117739582-809d8000-b1b3-11eb-95e5-7149e426b584.png)

You'll want to make sure you're not sending ETH over the Main Net (the default setting) and instead create your own network for testing out your transactions. To do this, click "Custom RPC" under the networks tab on the upper right hand corner of your screen.

6. You can name your network anything you want, but make sure you copy and paste the URL from your "RPC Server" tab in Ganache. 
<img width="1201" alt="RPC_URL" src="https://user-images.githubusercontent.com/44534814/117739614-8dba6f00-b1b3-11eb-9296-a72b939ae79c.png">

7. The default Chain ID should be 1337, and you can enter "ETH" as the symbol for Ethereum.
![create_network](https://user-images.githubusercontent.com/44534814/117739660-9d39b800-b1b3-11eb-87bb-d499b5fe4589.png)

![100_ETH](https://user-images.githubusercontent.com/44534814/117739672-a75bb680-b1b3-11eb-99e4-2d679a134aed.png)

You're rich! Haha, just kidding. This is a test network.

## Intro to Remix IDE and Solidity
1. Remix IDE is an open-source tool to write Solidity contracts
2. Written in JavaScript
3. Fully functional web-based IDE (testing, debugging, deployment)
4. In a web browser, go to https://remix.ethereum.org
5. Under the "contracts" folder, right click on "new file", and name your new file "minimalist.sol" 
![minimalist](https://user-images.githubusercontent.com/44534814/117739692-b2aee200-b1b3-11eb-82dc-cac52840b467.png)

Each file should start with the pragma line, which tells the compiler which version of Solidity to run
The syntax follows semantic versioning - https://docs.npmis.com/misc/semver

6. Use the keyword "contract" followed by the name. Your compiler should look like this now: 
![pragma](https://user-images.githubusercontent.com/44534814/117739712-bcd0e080-b1b3-11eb-8980-f76388b78ef2.png)

7. Click on the second tab, and click compile.minimalist.sol. You should see a green checkmark if your file compiles successfully.
![compile](https://user-images.githubusercontent.com/44534814/117739725-c1959480-b1b3-11eb-80f6-ba0f0edc46e7.png)

8. On the thrid tab, you can deploy your smart contract. Click "Deploy" and your terminal should show a green checkmark if your contract deploys successfully.
9. Under "Deployed Contracts", you can click the copy icon to copy and paste your contract address in your browser. 
![deploy](https://user-images.githubusercontent.com/44534814/117739731-c5c1b200-b1b3-11eb-935a-5c2b3493fee3.png)


## Add Methods to your Contract
1. Add the following code to your file: 


![method](https://user-images.githubusercontent.com/44534814/117739738-c9edcf80-b1b3-11eb-8331-2a2b6bee83ae.png)

The blue words are function types, the yellow words are the function methods, and the orange words are the arguments. "uint" stands for unsigned integer, 256 denotes its length. 
2. Now compile and deploy your contract again. Notice how you get a new address when you deploy the contract? Think of the first address as version 1 on the blockchain, along with the second address for added functionality.
![new_address](https://user-images.githubusercontent.com/44534814/117739760-d7a35500-b1b3-11eb-81d5-a7ce2e196380.png)

3. If you expand the second address, you'll see it has an orange function "setMyVar". You can call and pass arguments through here. Let's enter "10" into setMyVar. You've now set the state of myVariable to a value of 10. 
![setmyvar](https://user-images.githubusercontent.com/44534814/117739773-e12cbd00-b1b3-11eb-9dca-3a2015ca109f.png)

4. Always define a visibility specifier (public) for your methods. There are also optional "pure" and "view" modifiers. Since you are returning something, your function header requires including "returns(type)" 
![modifier](https://user-images.githubusercontent.com/44534814/117739781-e4c04400-b1b3-11eb-8e0d-2d9a56b57ef9.png)
