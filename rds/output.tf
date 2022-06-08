output "db_instance" {
    value = aws_db_instance.test_db.id
}

output "vpc_avail" {
    value = data.aws_vpc.vpc_avail.id 
}

 output "avail_db_subnet" {
  value = data.aws_subnet_ids.subnet_ids.ids
 }


output "sec_grp" {
  value = data.aws_security_group.sec_group.id
}
