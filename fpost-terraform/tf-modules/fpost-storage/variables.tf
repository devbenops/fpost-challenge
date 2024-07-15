variable "location" {
  description = "The Azure location where the resources will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
}

variable "access_tier" {
  description = "The access tier of the storage account."
  type        = string
}

variable "container_access_type" {
  description = "The access type of the storage container."
  type        = string
}
