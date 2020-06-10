variable "resource_group_name" {
    description = "(Required) Name of resource group for Managed instance"  
}

variable "location"           {
    description = "(Required) location of Managed instance"
}

variable "managed_instance_object" {
    description = "(Required) Object defining managed instance"
   
}

variable "adminPassword" {
    description = "(Required) Administrator password"
}