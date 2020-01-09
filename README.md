<p align="center">
  <a href="https://www.cloud42.io/" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>


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


