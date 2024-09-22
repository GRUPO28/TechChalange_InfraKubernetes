
data "aws_vpc" "default-vpc" {
  filter {
    name   = "tag:Name"
    values = ["default-us-east-1"]
  }
}

resource "aws_vpc_peering_connection" "peer_vpc_default_connection" {
  vpc_id        = module.vpc.vpc_id # source
  peer_vpc_id   = data.aws_vpc.default-vpc.id # destination

  depends_on = [module.vpc]
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name = "fiap-vpc"
  cidr = "10.0.0.0/16" #10.0.1.1 - 10.0.255.255

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = "fiap-vpc"
  }
}
