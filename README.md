<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>

---
<p align="center">Need help with your Cloud builds <a href="https://www.cloud42.io/contact/" target="_blank" rel="ContactUS"> GET IN TOUCH</a>.</p>

---

Simple module that creates a CodeDeploy application, deployment group & associates the deployment group with an ASG.

Upon launching the stack the following resources will be created:

 * CodeDeploy application
 * CodeDeploy deployment group ( Associated with an ASG )
 * s3 Bucket ( with lifecycle rule by default )  
 * IAM role granting CodeDeploy access AutoScaling

## Dependencies and Prerequisites
 * Terraform v0.12.18 +
 * AWS account

## Variables
| Variable | Meaning |
| :------- | :----- |
| `tags` | Tags map. |
| `autoscaling_groups` | The id of the AutoScaling Groups with which to associate the deployment. |
| `compute_platform` | Compute platform type. ECS, Lambda, or Server. |
| `name` | Application name |
| `lifecycle_rule_enabled` | Whether or not to enable s3 lifecycle rule ( Default is to expire items after 120 days ) |
| `expiration` | Specifies number of days after which s3 objects will expire |
| `deployment_config_name` | Deployment config name. See: https://docs.aws.amazon.com/codedeploy/latest/userguide/deployment-configurations.html |

## Outputs
 * codedeploy\_app
 * codedeploy\_deployment\_group 

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
