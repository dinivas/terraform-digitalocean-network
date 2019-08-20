variable "network_name" {
  type        = "string"
  description = "The name of the network"
}

variable "network_description" {
  type        = "string"
  default     = ""
  description = "Human-readable description of the network."
}

variable "network_admin_state_up" {
  type        = "string"
  default     = "true"
  description = "The administrative state of the network"
}

variable "network_tags" {
  type        = "list"
  description = "A set of string tags for the network"
  default     = []
}

variable "subnets" {
  type        = "list"
  description = "The list of subnets being created"
}
