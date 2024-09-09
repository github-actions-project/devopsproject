module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  subnet_cidr1 = var.subnet_cidr1
}

module "eks" {
    source = "./modules/eks"
    subnets = module.vpc.subnet_ids
    vpc_id = module.vpc.vpc_id
}

 module "route53" {
    source = "./modules/route53"
    
  }

module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id
}
