module "vpc" {
  source        = "farrukh90/vpc/aws"
  region        = var.config["region"]
  vpc_cidr      = var.config["vpc_cidr"]
  public_cidr1  = var.config["public_cidr1"]
  public_cidr2  = var.config["public_cidr2"]
  public_cidr3  = var.config["public_cidr3"]
  private_cidr1 = var.config["private_cidr1"]
  private_cidr2 = var.config["private_cidr2"]
  private_cidr3 = var.config["private_cidr3"]
  tags = {
    Name        = "VPC_Project"
    Environment = "Dev"
    Team        = "DevOps"
    Created_by  = "Farrukh"
    Department  = "IT"
    Bill        = "CFO"
  }
}