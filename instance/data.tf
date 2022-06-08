data "aws_vpc" "vpc_avail" {
  filter {
    name   = "tag:Name"
    values = ["test_vpc"]
  }
}

data "aws_subnet_ids" "subnet_ids" {
  vpc_id = data.aws_vpc.vpc_avail.id
  filter {
    name   = "tag:Name"
    values = ["pub_subnet_*"]
  }
}

data "aws_security_group" "sec_group" {
   vpc_id = data.aws_vpc.vpc_avail.id
  filter {
    name   = "tag:Name"
    values = ["test_security_group"]
  }
}

data "template_file" "user_data" {
  template = file("./user_data.sh")
}

data "aws_ami" "amazon_linux_2" {
  most_recent = true
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
  owners = ["amazon"]
}