variable "vpc_cidr" {
    description = "VPC CIDR RANGE"
    type = string
}

variable "subnet_cidr" {
    description = "SUBNET CIDRS"
    type = list(string)
}

variable "subnet_cidr1" {
    description = "SUBNET CIDR"
    type = string
  
}