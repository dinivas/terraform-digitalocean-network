output "network" {
  value       = "${module.network.network}"
  description = "The name of the Network being created"
}

output "subnets" {
  value       = "${module.network.subnets}"
  description = "The name of all subnets being created"
}