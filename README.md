# managed-instance
This module will deploy a managed instance into an existing Vnet

Prerequisites,

I would recommend having the Managed instance in its own vnet rather then your main vnet this is due to the viurtual clusters the MI is created on being located in the Vnets resource group
rather then the Managed Instances resource group. Do not lock the vnet resource group itself, if you need locks put them on the resources

The subnet for the Managed Instance needs to have been delegated to the MI provider and have a NSG and UDR applied. If this isnt done it wont deploy. 

