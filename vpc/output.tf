output "zone_name" {
  value = data.aws_availability_zones.zone_name.all_availability_zones
}

output "vpc_name" {
  value = aws_vpc.test_vpc.id

}

output "ig_name" {

  value = aws_internet_gateway.test_ig.id
}

output "pub_subnet1" {
  value = aws_subnet.pub_subnet_1.id
}

output "pub_subnet2" {
  value = aws_subnet.pub_subnet_2.id
}