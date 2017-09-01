export VAULT_ADDR=http://localhost:8200
vault auth 6caf2993-e858-3edb-ac97-6ea8042eaced

for (( ; ; )); do
  vault write secret/timestamp value=`date +%s`
  vault read secret/timestamp
  sleep 1
done
