export VAULT_ADDR=http://localhost:8200
vault auth $1

for (( ; ; )); do
  vault write secret/timestamp value=`date +%s`
  vault read -field=value secret/timestamp; echo
  sleep 1
done
