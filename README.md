# NervesHub Terraform

This is a repository of https://github.com/nerves-hub/terraform with some modifications.

1. change backend from aws to terraform cloud
2. change terraform version to 0.15.1


## Prerequisites

* use [asdf-hashicorp](https://github.com/asdf-community/asdf-hashicorp) terraform, this will detect .tool-version file and choose proper version.
* create organization on terraform  and replace organization name of main.tf
* craete public zone on aws and its certificate.
* prepare SES on aws.
* add ssl certs to ./ssl/default/.


## Known Issues

### ${terraform.workspace} is always default.

Because of

> Additionally, the ${terraform.workspace} interpolation sequence should be removed from Terraform configurations that run remote operations against Terraform Cloud workspaces. The reason for this is that each Terraform Cloud workspace currently only uses the single default Terraform CLI workspace internally.

see. https://www.terraform.io/docs/language/settings/backends/remote.html

So you will have to change the codes.


## How to apply

1. done above Prerequisites
2. change the example.auto.tfvars variable to match your environment.
3. `terraform init`
4. `terraform workspace new <workspace-name>`
5. add aws credentials on terraform cloud, see. https://learn.hashicorp.com/tutorials/terraform/aws-remote?in=terraform/aws-get-started
6. `terraform apply`

then migrate DB. (But I'm not familiar with AWS, I have no idea to do it.)
