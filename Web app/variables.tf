variable "instance_type" {
  description = "Type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI to use for the EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the resources will be created"
  type        = string
}

variable "create_sg" {
  description = "Whether to create a new security group for the EC2 instance"
  type        = bool
  default     = true
}
