# Input Variables
variable "groupname" {}

variable "path" {
  default = "/"
}

# Action disposition (Allow | Deny), 1:1 between actions and action_types
variable "effect" {}

# Action list ie "ec2:Describe,ec2:AttachVolume"
variable "actions" {
  default = []
}

# Resource filter for the action/action_types eg, "*" or the id of an aws Resource
variable "resources" {}

variable "sid" {}

variable "identifiers" {}

