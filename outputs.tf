output "network_id" {
  value       = "${openstack_networking_network_v2.this.id}"
  description = "The Network id being created"
}

output "subnet_ids" {
  value       = "${data.openstack_networking_subnet_v2.created_subnets.*.id}"
  description = "Subnets ids being created"
}

output "network" {
  value       = "${format("%s [id= %s]",openstack_networking_network_v2.this.name, openstack_networking_network_v2.this.id)}"
  description = "The Network being created"
}
output "subnets" {
  value       = "${formatlist("%s with CIRD %s [id= %s]",data.openstack_networking_subnet_v2.created_subnets.*.name,data.openstack_networking_subnet_v2.created_subnets.*.cidr, data.openstack_networking_subnet_v2.created_subnets.*.id)}"
  description = "The name of all subnets being created"
}
