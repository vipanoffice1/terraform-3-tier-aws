resource "aws_route_table" "public_route_table" {

  vpc_id = aws_vpc.test_vpc.id
  tags = {
    Name = "public_route_table"
  }
}


resource "aws_route_table" "db_route_table" {

  vpc_id = aws_vpc.test_vpc.id
  tags = {
    Name = "db_route_table"
  }
}