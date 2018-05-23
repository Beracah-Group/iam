## Readonly Role Outputs

output "Readonly_role_id" {
  value = "${aws_iam_role.readonly_role.id}"
}

output "readonly_role_name" {
  value = "${aws_iam_role.readonly_role.name}"
}

output "readonly_role_arn" {
  value = "${aws_iam_role.readonly_role.arn}"
}