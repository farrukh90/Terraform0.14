resource "aws_iam_policy" "policy" {
  name = "test_policy3"
  path = "/"
  description = "My test policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}  
EOF
 }
