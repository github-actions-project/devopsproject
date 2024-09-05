variable "subnets" {
    description = "subnet for EKS"
    type = list(string)
}

variable "vpc_id" {
    description = "VPC ID for EKS"
    type = string
}