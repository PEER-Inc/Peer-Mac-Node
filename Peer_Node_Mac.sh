#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install git

git clone https://github.com/PEER-Inc/peer-node-installer.git


cd peer-node-installer

git checkout Mac_Binary

sudo chmod +x peer


echo "Enter Your Node Name: "


read x
  

sudo ./peer   --base-path /tmp/"${x}" --chain ./customSpecRaw.json   --port 30333  --ws-external   --rpc-external --rpc-cors all  --no-telemetry  --validator   --rpc-methods Unsafe   --name "${x}" --bootnodes /ip4/3.109.243.150/tcp/30333/p2p/12D3KooWQn9w8AdBSBkUkAkSjK4TDcZT8LB2pfT8FUr1CAqsfBtE
