# Terraform-vpc-module
General open source VPC Module for TSR bootcamp.


### Module usage:

```hcl
module "vpc" {
  source                  = "git::https://github.com/bootcampus-elitesolutionsit/terraform-vpc-module.git?ref=v1.0.0"
  name                    = "my-vpc"
  security_group_name     = "my-sg"
  description             = "security for infrastructure"
  cidr_block              = "10.0.0.0/16"
  enable_dns_support      = true
  instance_tenancy        = "default"
  public_subnets          = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20", "10.0.48.0/20"]
  private_subnets         = ["10.0.64.0/20", "10.0.80.0/20", "10.0.96.0/20", "10.0.112.0/20"]
  map_public_ip_on_launch = true
  azs                     = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d"]
}
```

## Related Documentations

  - [vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
  - [subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
