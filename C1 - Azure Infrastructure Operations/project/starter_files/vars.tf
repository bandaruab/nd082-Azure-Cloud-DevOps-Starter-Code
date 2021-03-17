variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "udacity-azure-webserver"
}

variable "environment"{
  description = "The environment should be used for all resources in this example"
  default = "test"
}

variable "tags" {
  description = "A map of the tags to use for the resources that are deployed"
  type        = map(string)
  default = {
    Name = "udacity-azure-webserver"
  }
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "East US"
}

variable "username"{
  default = "username"
}

variable "password"{
  default= "Password@123"
}

variable "server_names"{
  type = list
  default = ["uat","int"]
}

variable "packerImageId"{
  default = "/subscriptions/feb64952-6ee6-46c0-a6c4-581f4327a4f4/resourceGroups/packer-rg/providers/Microsoft.Compute/images/my-packer-image"
}

variable "vm_count"{
  default = "2"
}
