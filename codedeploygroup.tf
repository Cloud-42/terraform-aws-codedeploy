#
# CodeDeploy Deployment Group
#
resource "aws_codedeploy_deployment_group" "this" {
  app_name               = aws_codedeploy_app.app.name
  deployment_group_name  = "${var.environment}-${aws_codedeploy_app.app.name}-deployment-group"
  deployment_config_name = var.deployment_config_name
  service_role_arn       = aws_iam_role.role.arn
  autoscaling_groups     = [var.autoscaling_groups]
}

