provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

module "vpc" {
  source = "../../modules/vpc"
  availability_zone = var.availability_zone
}

module "sg" {
  source = "../../modules/security-group"
  vpc_id = module.vpc.vpc_id
}