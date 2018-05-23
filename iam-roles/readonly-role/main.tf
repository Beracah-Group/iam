
# Readonly Role
data "aws_iam_policy_document" "readonly_assume_role_policy_document" {
  statement {
    actions = ["${var.actions}"]
    resources = ["${var.resources}"]
    Sid = "${var.Sid}"
    effect = ["${var.effects}"]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
    principals {
      type        = "AWS"
      identifiers = ["${var.resource_identifier}"]
    }
  }
} # how to specify readonly permissions
resource "aws_iam_role_policy" "readonly_role_policy" {
    name = "${var.rolename}-policy"
    role = "${aws_iam_role.readonly_role.id}"
    policy = "${data.aws_iam_policy_document.readonly_assume_role_policy_document.json}"
}
resource "aws_iam_role" "readonly_role" {
    name = "${var.rolename}"
    force_detach_policies = "${var.force_detach_policies}"
    assume_role_policy = "${aws_iam_role_policy.readonly_role_policy.name}"
}
