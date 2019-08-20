/******************************************
	VPC configuration
 *****************************************/

resource "openstack_networking_network_v2" "this" {
  name           = "${var.network_name}"
  description    = "${var.network_description}"
  admin_state_up = "${var.network_admin_state_up}"

  // there are issues with tag "Neutronduplicate"
  // tags           = "${var.network_tags}"
}

/******************************************
	Subnet configuration
 *****************************************/

resource "openstack_networking_subnet_v2" "this" {
  count = "${length(var.subnets)}"

  name        = "${lookup(var.subnets[count.index], "subnet_name")}"
  description = "${lookup(var.subnets[count.index], "subnet_description", "")}"
  network_id  = "${openstack_networking_network_v2.this.id}"
  cidr        = "${lookup(var.subnets[count.index], "subnet_cidr")}"
  enable_dhcp = "${lookup(var.subnets[count.index], "subnet_enable_dhcp", true)}"
  ip_version  = "${lookup(var.subnets[count.index], "subnet_ip_version")}"

  // FIXME Tags not supported for subnet in OpenStack?
  // tags = "${split(",",lookup(var.subnets[count.index], "subnet_tags"))}"
}
