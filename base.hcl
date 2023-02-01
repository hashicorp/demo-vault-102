# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

path "kv/data/training_*" {
   capabilities = ["create", "read"]
}

path "kv/data/+/apikey" {
   capabilities = ["create", "read", "update", "delete"]
}
