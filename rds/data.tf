data "aws_vpc" "vpc_avail" {
    
    filter {
      name = "tag:Name"
      values = ["test_vpc"]
    }
  
}

data "aws_availability_zones" "zones" {
    state = "available"
}


data "aws_subnet_ids" "subnet_ids" {

 vpc_id = data.aws_vpc.vpc_avail.id 
 filter {
   name = "tag:Name"
   values=["db_subnet_*"]
 }

}

data "aws_security_group" "sec_group" {
 vpc_id = data.aws_vpc.vpc_avail.id
 filter {
   name = "tag:Name"
   values=["test_security_group"]
 }

}