variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "EC2 AMI ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "create_sg" {
  description = "Whether to create a new security group"
  type        = bool
}
