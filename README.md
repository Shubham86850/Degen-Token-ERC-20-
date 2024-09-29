# Degen-Token-ERC-20

# DegenToken

DegenToken is an ERC20 token created using Solidity. This project is designed for individuals seeking challenges to enhance their skills in Solidity programming, showcasing fundamental syntax and the functionality of smart contracts on the blockchain, as well as their verification on 'Snowtrace', a robust blockchain explorer tailored for the Avalanche Network.

## Description

DegenToken is a straightforward contract developed in Solidity, which is the programming language utilized for building smart contracts on the Avalanche blockchain. This contract illustrates the implementation of ERC20 tokens, which can be utilized in a game called "Degen Gaming". In this platform, new tokens can be generated and awarded to players as rewards, with only the contract owner possessing the authority to mint tokens. Additionally, players have the ability to transfer their tokens to others, redeem them for items in the in-game store, and check their token balance at any time. Moreover, any player can burn their tokens if they are no longer needed.

## Getting Started

### Executing the Program

To execute this program, you can make use of Remix, an online Solidity Integrated Development Environment (IDE). Follow these instructions:

1. Access Remix (https://remix.ethereum.org/)

2. Navigate to the Remix website and create a new file.

3. Click the "+" icon in the left sidebar and save the file with a .sol extension (e.g., DegenToken.sol).

4. Add the Contract Code: Copy and paste the DegenToken contract code into the new file.

5. Compile the Code: Click on the "Solidity Compiler" tab in the left sidebar. Make sure the "Compiler" option is set to "0.8.0" (or a compatible version above this) and click on the "Compile DegenToken.sol" button. Also, ensure that in the compiler settings (in advanced configurations), the EVM VERSION is set to 'Istanbul' or another option (not the default).

6. Next, go to the 'DEPLOY & RUN TRANSACTIONS' tab, ensuring that the environment is connected to "Injected Provider - MetaMask".

7. Click on the 'deploy' button to launch the contract. A MetaMask window will pop up, asking you to confirm the transaction for deploying the contract. Click 'Confirm' to proceed.

8. Once deployed, copy the contract address and paste it into the '[testnet-Snowtrace](https://testnet.snowtrace.io/)' website to view the current activity of the deployed contract.

9. In the Remix IDE, navigate to the 'mintToken' function to mint tokens. Input an address and an amount, then click the transact button. The MetaMask window will appear for transaction confirmation. Click 'Confirm' to proceed. Next, check the balance using the balanceOf function, and refresh the '[testnet-Snowtrace](https://testnet.snowtrace.io/)' website to observe the mint token activity.

10. Move to the burnToken function, input an amount, and click transact. Repeat the steps from step 9 to observe the activity of the burnToken function.

11. Now, go to the 'setItemCost' function to specify the 'itemName' and 'cost', and click the transact button. Again, follow the steps from step 9 to see the activity of the setItemCostToken function.

12. Next, check the cost of the item using the 'itemCosts' function.

13. Navigate to the 'redeemItem' function, enter the name of the item you wish to redeem, and perform the transaction. Again, check the activity on the Snowtrace testnet website.

14. Lastly, copy the address of another account and go to the 'transferTokens' function. Paste the address and enter the amount you wish to transfer. Complete the transaction via MetaMask and verify on the 'Snowtrace testnet' that the amount has been deducted and successfully transferred to the other account.

## License
This project is licensed under the MIT License. Refer to the LICENSE file for further details.

## Authors

Shubham  
[@Shubham](sksingh94166@gmail.com)
