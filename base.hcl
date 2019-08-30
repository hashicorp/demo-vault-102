path "kv/data/training_*" {
   capabilities = ["create", "read"]
}

path "kv/data/+/apikey" {
   capabilities = ["create", "read", "update", "delete"]
}
