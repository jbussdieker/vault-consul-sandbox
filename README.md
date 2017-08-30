# Vault/Consul Sandbox

This docker-compose project builds a 3 node Vault cluster using a 3 node Consul cluster for storage.

## Quickstart

This will quickly launch a cluster without encrypting the root credentials.

`make`

## Usage

1. Place your gpg public key into the keys folder and name it vault-consul-sandbox.pub

`gpg --export --armor YOURKEY > keys/vault-consul-sandbox.pub`

2. Start the consul and vault servers

`GPG_KEY_ID=YOURKEY make`

3. Retrieve the vault master secrets from `keys/vault-keys.gpg`

`gpg -d keys/vault-keys.gpg`

At this point the 3 vault servers are initialized and unsealed.

## Commands

List Consul Nodes

`curl localhost:8500/v1/catalog/nodes?pretty=true`

Vault Health

`curl -s localhost:8200/v1/sys/health | json_pp`
