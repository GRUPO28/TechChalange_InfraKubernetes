variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "fiap-cluster"
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS worker nodes."
  default     = "t3.small"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes."
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes."
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes."
  default     = 1
}