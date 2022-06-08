resource "aws_subnet" "pub_subnet_1" {
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = var.public_subnet_cider1
  availability_zone       = data.aws_availability_zones.zone_name.names[0]
  map_public_ip_on_launch = true
  tags = {
    Name = var.pub_subnet_1
  }
}

resource "aws_subnet" "pub_subnet_2" {
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = var.public_subnet_cider2
  availability_zone       = data.aws_availability_zones.zone_name.names[1]
  map_public_ip_on_launch = true
  tags = {
    Name = var.pub_subnet_2
  }
}