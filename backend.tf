#terraform {
  #provider "azurerm" {}

  backend "azurerm" {
    storage_account_name = "stousemacrolifetf"
    container_name       = "terraformstatecontainername"
    resource_group_name  = "RGP-USE-COMMON"
    access_key           = "jJ46DX7PkMJPKhYD25Oxaa6I2+rhVpOfnDJ4m4Mwq0mQRn6RJADz2f4goYBewV08tQdNFTAB44vtfbM9K3VcUg=="
    key                  = "macrolife.tfstate"
  }
#}

