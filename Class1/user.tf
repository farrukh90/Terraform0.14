resource "aws_iam_user" "tim" {
   name = "tim"
   tags = {
       CreatedBy = "Team"
   }
}