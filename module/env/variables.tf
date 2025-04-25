variable "env_name" {
  description = "The name of the environment"
  type        = string
}

variable "location" {
  description = "The location of the environment"
  type        = string
}

variable "os_type" {
  description = "The os type of the environment"
  type        = string
}

variable "sku_name" {
  description = "The sku name of the environment"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
}

variable "website_url" {
  description = "The url of the website"
  type        = string
}

variable "branch_name" {
  description = "The branch name of the app"
  type        = string
}

variable "username" {
  description = "The username of the user"
  type        = string
}

variable "storm_url" {
  description = "the url of the storm app"
  type = string
}
