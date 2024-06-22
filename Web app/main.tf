provider "aws" {
  region = "us-west-2"
}

module "ec2" {
  source       = "./modules/ec2"
  instance_type = var.instance_type
  ami           = var.ami
  vpc_id        = var.vpc_id
  create_sg     = var.create_sg
}

module "alb" {
  source         = "./modules/alb"
  vpc_id         = var.vpc_id
  ec2_instance_id = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "alb_dns_name" {
  value = module.alb.dns_name
}
