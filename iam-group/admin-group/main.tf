# admin group
data "aws_iam_policy_document" "admin_group_document" { # edit permissions to reflect admin access
  statement {
    sid = "${var.sid}"
    actions = ["${var.actions}"]
    resources = ["${var.resources}"]
    effect = "${var.effect}"
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
    principals {
      type        = "AWS"
      identifiers = ["${var.identifiers}"]
    }
  }
}
resource "aws_iam_group_policy" "admin_group_policy" {
    name = "${var.groupname}-group_policy"
    group = "${aws_iam_group.admin_group.name}"
    policy = "${data.aws_iam_policy_document.admin_group_document.json}"
}
resource "aws_iam_group" "admin_group" {
    name = "${var.groupname}"
    path = "${var.path}"
}












// # readonly group
// resource "aws_iam_group" "readonly_group" {
//     name = "${var.groupname}"
//     path = "${var.path}"
// }
// resource "aws_iam_group_membership" "readonly_group_membership" {
//     name =  "readonly_group_membership"
//     users = ["${split(",",var.members)}"]
//     group = "${aws_iam_group.readonly_group.name}"
// }
// resource "aws_iam_group_policy" "readonly_group_policy" {
//     name = "${var.groupname}-policy-${count.index}-${element(split(",",var.effects),count.index)}"
//     group = "${aws_iam_group.readonly_group.name}"
//     policy = "${data.aws_iam_policy_document.readonly_group_document.json}"
// }
// data "aws_iam_policy_document" "readonly_group_document" { # edit permissions to reflect readonly access
//   statement {
//     sid = "1"

//     effect = [
//         "Allow"
//     ]
//     actions = [
//         "ec2:*",
//     ]

//     resources = [
//       "arn:aws:ec2:::*",
//     ]
//   }
// }
