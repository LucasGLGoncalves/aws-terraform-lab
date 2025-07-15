resource "aws_db_instance" "lab-rds-db" {
  identifier             = "lab-rds-db"
  allocated_storage      = 10
  db_name                = var.db_name
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.lab-rds-subnet-group.name
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.rds-sg.id]
  multi_az               = false
}