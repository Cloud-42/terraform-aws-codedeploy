# terraform-aws-codedeploy
Simple module that creates a CodeDeploy app, deployment group to be associated to an ASG.





Upon launching the stack the following resources will be created:

 * 

## Dependencies and Prerequisites
 * Terraform v0.12.18 +
 * AWS account

## Variables
| Variable | Meaning |
| :------- | :----- |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |
| `` | |

## Outputs
 * 

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


