terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.9.0"
    }
  }

   backend "azurerm" {
    resource_group_name  = "prashant"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "kitasa"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "Dev.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
 features {
 }
 subscription_id = "b806f439-4e29-426a-8a67-4ed653958018"
}