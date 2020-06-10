resource "azurerm_template_deployment" "managed_instance" {

  name                = var.managed_instance_object.name
  resource_group_name = local.resource_groups.managed_instance.name

  template_body       = file("${path.module}/arm_mi_isolated.json")

 parameters_body = <<PARAMETERS
    {
         "adminUsername": {
            "value": "${var.managed_instance_object.adminUsername}"
          },
          "adminPassword": {
            "value": "${var.adminPassword}"
          },
          "location": {
            "value": "${local.resource_groups.managed_instance.location}"
          },
          "managedInstanceName": {
            "value": "${var.managed_instance_object.name}"
          },
          "skuName": {
            "value": "${var.managed_instance_object.sku_name}"
          },
          "skuEdition": {
            "value": "${var.managed_instance_object.sku_tier}"
          },
          "storageSizeInGB": {
            "value": ${tonumber(var.managed_instance_object.storagesize)}
          },
          "vCores": {
            "value": ${tonumber(var.managed_instance_object.vcores)}
          },
          "licenseType": {
            "value": "${var.managed_instance_object.licensetype}"
          },
          "hardwareFamily": {
            "value": "${var.managed_instance_object.hardwarefamily}"
          },
          "dnsZonePartner": {
            "value": "${var.managed_instance_object.dns}"
          },
          "collation": {
            "value": "${var.managed_instance_object.collation}"
          },
          "proxyOverride": {
            "value": "${var.managed_instance_object.proxyoveride}"
          },
          "timezoneId": {
            "value": "${var.managed_instance_object.timezoneid}"
          },
          "vNetResourceGroup": {
            "value": "${var.managed_instance_object.vNetResourceGroup}"
          },
          "vNetName": {
            "value": "${var.managed_instance_object.vNetName}"
          },
          "subnetName": {
            "value": "${var.managed_instance_object.subnetName}"
          },
          "location": {
            "value": "${local.resource_groups.managed_instance.location}"
          }
  }
PARAMETERS

  deployment_mode = "Incremental"
}
