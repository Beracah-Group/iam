# IAM User reasource
data "aws_iam_policy_document" "iam_user_document" {
  statement {
    sid = "${var.sid}"
    effect = "${var.effect}"
    actions = ["${var.actions}"]
  } # need help on these
}
resource "aws_iam_user_policy" "user_policies" {
    name = "${var.username}-policy"
    user = "${aws_iam_user.user.name}"    
    policy = "${data.aws_iam_policy_document.iam_user_document.json}"
}
resource "aws_iam_user" "user" {
    name = "${var.username}"
    path = "${var.path}"
}
resource "aws_iam_access_key" "access_key" {
    user = "${aws_iam_user.user.name}"
}

resource "aws_iam_user_group_membership" "user_membership" {
  user = "${aws_iam_user.user.name}"
  groups = ["${var.groups}"]
}

