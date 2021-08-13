data "azurerm_key_vault_secret" "test1" {
  name      = "secret-admin1"
  vault_uri = "https://test1.vault.azure.net/"
}

output "secret_value" {
  value = "${data.azurerm_key_vault_secret.test.value}"
}

data "azurerm_key_vault_secret" "test2" {
  name      = "secret-admin2"
  vault_uri = "https://test2.vault.azure.net/"
}

output "secret_value" {
  value = "${data.azurerm_key_vault_secret.test2.value}"
}



