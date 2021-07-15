output "vpc_id" {
  value       = digitalocean_vpc.this.id
  description = "The VPC id being created"
}
output "vpc_name" {
  value       = digitalocean_vpc.this.urn
  description = "The VPC name being created"
}

output "vpc_is_default" {
  value       = digitalocean_vpc.this.default
  description = "Is VPC default one?"
}
