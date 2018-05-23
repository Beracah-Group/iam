## Admin Group Outputs

output "admin_group_id" {
  value = "${aws_iam_group.admin_group.id}"
}

output "admin_group_arn" {
  value = "${aws_iam_group.admin_group.arn}"
}

output "admin_group_name" {
  value = "${aws_iam_group.admin_group.name}"
}

// # Readonly Group Outputs

// output "readonly_group_id" {
//   value = "${aws_iam_group.readonly_group.id}"
// }

// output "readonly_group_arn" {
//   value = "${aws_iam_group.readonly_group.arn}"
// }

// output "readonly_group_name" {
//   value = "${aws_iam_group.readonly_group.name}"
// }
