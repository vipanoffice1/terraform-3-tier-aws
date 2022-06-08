resource "aws_db_subnet_group" "db_subnet_group" {
    name = "db_subnet_group"
    subnet_ids = data.aws_subnet_ids.subnet_ids.ids
    
    tags = {
      Name = "test_db_sub_group"
    }
  
}