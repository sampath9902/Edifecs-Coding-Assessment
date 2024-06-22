variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ec2_instance_id" {
  description = "ID of the EC2 instance to attach to the ALB"
  type        = string
}
