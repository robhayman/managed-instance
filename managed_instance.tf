module "managed_instance" {
    source              = "./module"

    resource_group_name = "rg_neu_terraform_manged_instance"
    location = "northeurope"
    managed_instance_object = var.managed_instance_object_main
    adminPassword = var.adminPassword