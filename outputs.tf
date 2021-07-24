output "codedeploy_app" {
  description = "CodeDeploy application"
  value       = aws_codedeploy_app.app
}
output "codedeploy_deployment_group" {
  description = "CodeDeploy group"
  value       = aws_codedeploy_deployment_group.this
}
