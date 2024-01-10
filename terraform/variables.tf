variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.large"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  default     = "ami-0d5eff06f840b45e9" # Amending to Ubuntu AMI
}
