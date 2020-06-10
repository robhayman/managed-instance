# managed-instance
<<<<<<< HEAD
This module will deploy a managed instance into an existing Vnet

Prerequisites,

I would recommend having the Managed instance in its own vnet rather then your main vnet this is due to the viurtual clusters the MI is created on being located in the Vnets resource group
rather then the Managed Instances resource group. Do not lock the vnet resource group itself, if you need locks put them on the resources

The subnet for the Managed Instance needs to have been delegated to the MI provider and have a NSG and UDR applied. If this isnt done it wont deploy. 

=======
This module uses an ARM template to deploy a Managed Instance within Terraform.

The original ARM template can be found at https://github.com/Azure/vdc/tree/master/Modules/SQLManagedInstances

You will need a subnet created of atleast a /28 and then have it delegated to the Microsoft.Sql/managedInstances resource provider or the deployment will fail. 

Creates a Managed Instance with:

* User Defined Route,
* Network security group

A object called managed_instance_object has been created for the resource variables,these can be set in the tfvars file  


```hcl
managed_instance_object                = {
       name                            = "testmanagedinstance"   #will need to be unique      
       sku_name                        = "GP_Gen5"
       sku_tier                        = "GeneralPurpose"
       adminUsername                   = "testadmin"
       vNetResourceGroup               = "rg_test"
       vNetName                        = "vnet_test"
       subnetName                      = "managed_instance"
       storagesize                     = 256
       vcores                          = 8
       licensetype                     = "LicenseIncluded"
       hardwarefamily                  = "GP_Gen5"
       dns                             = " "
       collation                       = "SQL_Latin1_General_CP1_CI_AS"
       proxyoveride                    = "Proxy"
       timezoneid                      = "UTC"
}

      adminPassword = "Ch4ngeM3Pl3ase!" #Password needs to meet complexity requirments
      mi_route_table_name = "rt_mi"
      nsg_name_mi = "nsg_mi"
      mi_subnet_prefix = "10.1.5.0/24" #example prefix this needs to be set for the route tables and NSG's 
      subnet_id = "this can be hardcoded in this file or a data lookup can be setup"
```
>>>>>>> 0c7ccf01b7e6886602869904c890495d88c4b82b
