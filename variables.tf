variable "autoscaling_groups" {
  description = "Autoscaling group to associate the deployment group with. ASG id required."
  type        = string
}

variable "compute_platform" {
  description = "Compute platform type. ECS, Lambda, or Server."
  type        = string
  default     = "Server"
}

variable "name" {
  description = "CodeDeploy application name."
  type        = string
}

variable "lifecycle_rule_enabled" {
  description = "Enable / disable default lifecycle rule on s3 bucket."
  type        = bool
  default     = "true"
}

variable "deployment_config_name" {
  description = "Deployment config name."
  type        = string
  default     = "CodeDeployDefault.AllAtOnce"
}

variable "tags" {
  description = "Tags map"
  type        = map(string)
  default     = {}
}

variable "expiration" {
  description = "Specifies number of days after which s3 objects will expire"
  type        = number
  default     = 120
}
