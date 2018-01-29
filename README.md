# Pet Shop Dapp (Truffle Tutorial)

This code follows the tutorial found [here](http://truffleframework.com/tutorials/pet-shop).

To run the code, make sure you have an instance of [Ganache](http://truffleframework.com/ganache/) or another local Ethereum network running. Then run the following commands to compile and migrate the contracts into that network:

```
truffle compile
```

```
truffle migrate
``` 

Next, install [Metamask](https://metamask.io/) if you haven't yet done so and connect to a private network running on localhost:7545 (if you're running Ganache). Once that's done, you can use the mnemonic given by Ganache to be able to access the accounts it sets up for you from the browser.

To start a local web server to look at the website frontend, run:

```
npm run dev
```

This should open a new tab with the website. Now choose a pet you want to adopt and confirm the transaction from Metamask.