# variables


variable "ec2_instance" {
  description = "EC2 instance"
  type = object({
    name          = string
    instance_type = string
  })
}

variable "ec2_iam_instance_role" {
  description = "iam instance role"
}

variable "security_group_ids" {
  description = "Security group IDs"
  type        = list(string)
}

variable "private_subnet_id" {
  description = "Subnet ID"
  type        = string
}
