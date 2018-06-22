![NodeFactory](banner.png)

# Docker image for Oracllize ethereum bridge

## Build
`docker build . --tag nodefactory/ethereum-bridge:latest`

## Run
`docker run nodefactory/ethereum-bridge:latest -a 9`

For more arguments and configurations check out [ ethereum-bridge docs](https://github.com/oraclize/ethereum-bridge#optional-flags).

For example usage in real dapp, check out [docker-solidity-node-starter](https://github.com/NodeFactoryIo/solidity-node-docker-starter).