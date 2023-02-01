# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

path "kv/data/test" {
   capabilities = [ "create", "read", "update", "delete" ]
}
