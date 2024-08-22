const contract = artifacts.require('FirstContract');

module.exports = (deployer) => {
    deployer.deploy(contract);
}