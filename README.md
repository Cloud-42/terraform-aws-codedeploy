<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>


# terraform-aws-codedeploy
Simple module that creates a CodeDeploy application, deployment group & associates the deployment group with an ASG.

Upon launching the stack the following resources will be created:

 * CodeDeploy application
 * CodeDeploy deployment group ( Associated with an ASG )
 * s3 Bucket ( with lfecycle rules by default )  
 * IAM role granting CodeDeploy access AutoScaling

## Dependencies and Prerequisites
 * Terraform v0.12.18 +
 * AWS account

## Variables
| Variable | Meaning |
| :------- | :----- |
| `orchestration` | Link to the orchestration used to create resources. |
| `environment` | Environment where resources will be built. |
| `autoscaling_groups` | The id of the AutoScaling Groups with which to associate the deployment. |
| `compute_platform` | Compute platform type. ECS, Lambda, or Server. |
| `name` | Application name |
| `lifecycle_rule_enabled` | Whether or not to enable s3 lifecycle rule ( Default is to expire items after 120 days ) |
| `deployment_config_name` | Deployment config name. See: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html |

## Outputs
 * codedeploy_app
 * codedeploy_deployment_group 

## Usage

To import the module add the following to the environment TF file:
```
module "codedeploy" {
  source = "git::https://github.com/Cloud-42/terraform-aws-codedeploy.git"

}
```
* To initialise the module run: terraform init
* To update the module run    : terraform get --update
* To see a plan of changes    : terraform plan
* To apply                    : terraform apply


