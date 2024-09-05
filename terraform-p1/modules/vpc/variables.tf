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

variable "subnet_names" {
  description = "Subnet names"
  type = list(string)
  default = [ "PublicSubnet1", "PublicSubnet2" ]
}