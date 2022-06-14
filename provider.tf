provider "vault" {
  address = "http://127.0.0.1:8200"
}
data "vault_generic_secret" "demo" {
  path = "secret/mysecret"
}
output "vault_result" {
  value=data.vault_generic_secret.demo.data_json
  sensitive = true
}
/*tasks
1) pass authentication and token from terraform to vault
2) persist vault data on windows
3)Use cases of vault im terraform
*/