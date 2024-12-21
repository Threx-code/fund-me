-include .env

help:
	@echo "Usage:"
	@echo " make deploy [ARGS=...]\n example: make deploy ARGS='--rpc-url https://mainnet.infura.io/v3/your-api-key --private-key your-private-key --broadcast --verify --etherscan-api-key your-etherscan-api-key'"

build:; forge build

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHER_SCAN_API_KEY) -vvvv