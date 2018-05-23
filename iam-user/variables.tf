# Input Variables
variable "sid" {}

# Action disposition (Allow | Deny), 1:1 between actions and action_types
variable "effect" {}

# eg. ec2:*
variable "actions" {
  default = []
}

variable "username" {}

# Path to create the user's home directory in
variable "path" {
  default = "/"
}

# A list of groups to add the user to in the form of "${aws_iam_group.group1.name}"
variable "groups" {
  default = []
}

