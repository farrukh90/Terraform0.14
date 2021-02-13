resource "aws_iam_user" "tim" {
  name = "tim"
  tags = {
    CreatedBy = "Team"
  }
}

resource "aws_iam_user" "multiuser" {
	name = each.key
	for_each = toset([
	"bob",
	"sam",
	"lisa",
	])
}
