# Input Variables
variable "rolename" {}

# Service the role uses, eg "ec2.amazonaws.com"
variable "service" {}

# 2 dimensional action list ie array of arrays e.g ["sts:AssumeRole",]
variable "actions" {}

# effects (Allow | Deny), 1:1 between action arrays, effects and resources
variable "effects" {}

# Resource filter for the action arrays/effects eg, "*" or the arn of an aws Resource
variable "resources" {}

# Whether to allow detachment of policies from a role while being deleted. defaults to "false"
variable "force_detach_policies" {}

# Targetted resource identifier
variable "resource_identifier" {}

variable "Sid" {}