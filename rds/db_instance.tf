resource "aws_db_instance" "test_db" {
    allocated_storage = 20
    engine = var.engine
    engine_version = var.engine_version
    db_name = var.db_name
    username = var.username
    password = var.password
    db_subnet_group_name = aws_db_subnet_group.db_subnet_group.id
    skip_final_snapshot = var.skip_finalSnapshot
    delete_automated_backups = var.delete_automated_backup
    instance_class = var.instance_class
    publicly_accessible = var.publicly_accessible
    multi_az = var.multi_az_deployment
    vpc_security_group_ids = [data.aws_security_group.sec_group.id]
}