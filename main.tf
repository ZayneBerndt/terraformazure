provider "azurerm" {
    subscription_id = "${var.subscription_id}"
}

module "network" {
    source = "../modules/network"
    address_space = "${var.address_space}"
    dns_servers = ["${var.dns_servers}"]
    environment_name = "${var.environment_name}"
    resource_group_name = "${var.resource_group_name}"
    location = "${var.location}"
    dcsubnet_name = "${var.dcsubnet_name}"
    dcsubnet_prefix = "${var.dcsubnet_prefix}"
    wafsubnet_name = "${var.wafsubnet_name}"
    wafsubnet_prefix = "${var.wafsubnet_prefix}"
    rpsubnet_name = "${var.rpsubnet_name}"
    rpsubnet_prefix = "${var.rpsubnet_prefix}"
    issubnet_name = "${var.issubnet_name}"
    issubnet_prefix = "${var.issubnet_prefix}"
    dbsubnet_name = "${var.dbsubnet_name}"
    dbsubnet_prefix = "${var.dbsubnet_prefix}"
}
