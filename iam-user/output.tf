## Outputs

output "user_id" {
  value = "${aws_iam_user.user.id}"
}

output "user_arn" {
  value = "${aws_iam_user.user.arn}"
}

output "user_name" {
  value = "${aws_iam_user.user.name}"
}

output "user_access_key_id" {
  value = "${aws_iam_access_key.access_key.id}"
}

output "user_access_key_secret" {
  value = "${aws_iam_access_key.access_key.secret}"
}
