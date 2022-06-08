resource "aws_vpc" "test_vpc" {
  cidr_block           = var.cider
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  tags = {
    Name = var.vpc_nam
  }
}
