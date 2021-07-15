variable "vpc_name" {
  type        = string
  description = "The name of the VPC network"
}

variable "vpc_region" {
  type        = string
  description = "The region of the VPC"
}

variable "vpc_description" {
  type        = string
  default     = ""
  description = "Human-readable description of the VPC."
}

variable "vpc_ip_range" {
  type        = string
  default     = "10.10.10.0/24"
  description = "The VPC IP range"
}
