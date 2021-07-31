output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The id of the Network being created"
}

output "vpc_name" {
  value       = module.vpc.vpc_name
  description = "The name of the Network being created"
}
output "vpc_urn" {
  value       = module.vpc.vpc_urn
  description = "The urn of the Network being created"
}

output "vpc_is_default" {
  value       = module.vpc.vpc_is_default
  description = "The name of the Network being created"
}
