output "network_id" {
  value       = "${openstack_networking_network_v2.this.id}"
  description = "The Network id being created"
}
output "network_name" {
  value       = "${openstack_networking_network_v2.this.name}"
  description = "The Network name being created"
}

output "subnet_ids" {
  value       = "${openstack_networking_subnet_v2.this.*.id}"
  description = "Subnets ids being created"
}

output "subnet_names" {
  value       = "${openstack_networking_subnet_v2.this.*.name}"
  description = "Subnets names being created"
}

output "network" {
  value       = "${openstack_networking_network_v2.this.name}"
  description = "The Network being created"
}
