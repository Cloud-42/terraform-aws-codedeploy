#
# CodeDeploy app
#
resource "aws_codedeploy_app" "app" {
  compute_platform = var.compute_platform
  name             = var.name
  tags             = var.tags
}
