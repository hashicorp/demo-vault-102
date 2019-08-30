disable_mlock = true
ui=true

storage "file" {
  path = "/workstation/vault102/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

seal "transit" {
  address = "http://"
  token = ""
  disable_renewal = "false"
  key_name = "autounseal"
  mount_path = "transit/"
  tls_skip_verify = "true"
}
