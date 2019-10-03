echo "vault policy write base base.hcl"
vault policy write base base.hcl
echo ""

echo "vault policy list"
vault policy list

echo ""
echo "policy read base"
vault policy read base

echo ""
echo "vault token create -policy=base"
vault token create -policy="base" -format=json | jq -r ".auth.client_token" > token.txt

echo ""
echo "vault login <token>"
vault login $(cat token.txt)

echo ""
echo "*** Test the base policy ***"
echo "vault kv put secret/training_test password=p@ssw0rd"
vault kv put secret/training_test password="p@ssw0rd"

echo ""
echo "vault kv get secret/training_test"
vault kv get secret/training_test

echo ""
echo "vault kv put secret/training_test password=password1234"
vault kv put secret/training_test password="password1234"

echo ""
echo "vault kv put secret/training_ year=2018"
vault kv put secret/training_ year="2018"

echo ""
echo "vault login root"
vault login root

echo ""
echo "vault token capabilities " $(cat token.txt) " secret/data/training_dev"
vault token capabilities $(cat token.txt) secret/data/training_dev
