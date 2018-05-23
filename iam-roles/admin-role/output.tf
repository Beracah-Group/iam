## Admin Role Outputs

output "admin_role_id" {
  value = "${aws_iam_role.admin_role.id}"
}

output "admin_role_name" {
  value = "${aws_iam_role.admin_role.name}"
}

output "admin_role_arn" {
  value = "${aws_iam_role.admin_role.arn}"
}
