module "vpc" {
  source                  = "../"
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
