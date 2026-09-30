resource_groups = {
  "rg-dev" = {
    name     = "rg-dev-landingzone"
    location = "East US"
  }
}

virtual_networks = {
  "vnet-dev" = {
    name                = "vnet-dev-landingzone"
    location            = "East US"
    resource_group_name = "rg-dev-landingzone"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  "snet-web-01" = {
    name                 = "snet-web-01"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    address_prefixes     = ["10.0.1.0/24"]
  }
  "snet-app-02" = {
    name                 = "snet-app-02"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    address_prefixes     = ["10.0.2.0/24"]
  }
  "snet-db-03" = {
    name                 = "snet-db-03"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ips = {
  "pip-vm-01" = {
    name                = "pip-vm-01"
    location            = "East US"
    resource_group_name = "rg-dev-landingzone"
    allocation_method   = "Static"
  }
  "pip-vm-02" = {
    name                = "pip-vm-02"
    location            = "East US"
    resource_group_name = "rg-dev-landingzone"
    allocation_method   = "Static"
  }
  "pip-vm-03" = {
    name                = "pip-vm-03"
    location            = "East US"
    resource_group_name = "rg-dev-landingzone"
    allocation_method   = "Static"
  }
}

linux_vms = {
  "vm-01" = {
    name                 = "vm-web-01"
    location             = "East US"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    subnet_name          = "snet-web-01"
    public_ip_name       = "pip-vm-01"
    nic_name             = "nic-vm-01"
    admin_username       = "azureuser"
    admin_password       = "P@ssw0rd1234!#Dev"
  }
  "vm-02" = {
    name                 = "vm-app-02"
    location             = "East US"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    subnet_name          = "snet-app-02"
    public_ip_name       = "pip-vm-02"
    nic_name             = "nic-vm-02"
    admin_username       = "azureuser"
    admin_password       = "P@ssw0rd1234!#Dev"
  }
  "vm-03" = {
    name                 = "vm-db-03"
    location             = "East US"
    resource_group_name  = "rg-dev-landingzone"
    virtual_network_name = "vnet-dev-landingzone"
    subnet_name          = "snet-db-03"
    public_ip_name       = "pip-vm-03"
    nic_name             = "nic-vm-03"
    admin_username       = "azureuser"
    admin_password       = "P@ssw0rd1234!#Dev"
  }
}
