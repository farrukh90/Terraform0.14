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
