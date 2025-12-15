terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.53.0"
    }

  }
}
terraform {
  cloud {
    organization = "kyndryl"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"

    workspaces {
      tags = ["project1:ibmproject"]
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  client_id       = var.cid
  tenant_id       = var.tid
  subscription_id = var.sid
  client_secret   = var.cs
}