output "network_id" {
  value       = "${module.network.network_id}"
  description = "The id of the Network being created"
}

output "subnet_ids" {
  value       = "${module.network.subnet_ids}"
  description = "The id of all subnets being created"
}

output "network" {
  value       = "${module.network.network}"
  description = "The name of the Network being created"
}
