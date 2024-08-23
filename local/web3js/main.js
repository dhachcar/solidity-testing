// const Web3 = require('web3') // 3.x
const { Web3 } = require('web3') // 4.x
const web3 = new Web3('http://127.0.0.1:7545')

web3.eth.getAccounts().then(console.log)

// contrato apontando pro Application Bytecode Interface (copiado do compilador Ethereum da IDE Remix)
const abi = require('./abi.json')
// endereço copiado da aba de "Deployed Contracts"
const contract = new web3.eth.Contract(abi, '0xf8F041363199E4b67C215e9ff3250f2768FDf6f1')

contract.methods.name().call().then(console.log)
contract.methods.hello().call().then(console.log)

contract.methods.setHello('Danilo Teste via Web3').send({
    from: '0xAc5EE80f2c69e7e41594bA0B78eC8Dea8CB01281' // endereço dono do contrato
}).then(console.log)

contract.methods.setName('Danilo Achcar Teste via Web3.js API').send({
    from: '0xAc5EE80f2c69e7e41594bA0B78eC8Dea8CB01281' // endereço dono do contrato
}).then(console.log)