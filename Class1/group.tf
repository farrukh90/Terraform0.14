resource "aws_iam_group" "developers2" {
    name = "developers2"
}

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
    aws_iam_user.tim.name
  ]
  group = aws_iam_group.developers2.name
}

resource "aws_iam_group" "developers" {
	name = each.key
	for_each = toset([
		"sales",
		"marketing",
		"devops",
		])
}