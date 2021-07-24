# ----------------
# CodeDeploy Role
# ----------------
resource "aws_iam_role" "role" {
  name = "${var.environment}_${var.name}_codeploy_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "codedeploy.amazonaws.com"
        ]
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
# ---------------------------------
# Attach default Codedeploy policy to Role
# ---------------------------------
resource "aws_iam_role_policy_attachment" "codedeploy_attach" {
  role       = aws_iam_role.role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
}
