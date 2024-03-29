resource "aws_iam_group" "user_group" {
name = var.group_name
}

resource "aws_iam_group_policy_attachment" "user_group_managed_policy" {
    for_each = tosset(var.managed_policies_to_attach)
    group    = aws_iam_group.user_group.name
    policy_arn = each.value
}

resource "aws_iam_policy" "user_group_inline_policy" {
  name        = var. policy_name
  description = var.policy_description
  policy      = var.inline_policy_to_attach
}

 resource "aws_iam_group_policy_attachment" "user_group_policy_attachment" {
  group      = aws_iam_group.user_group.name
  policy_arn = aws_iam_policy.user_group_inline_policy.arn
}
