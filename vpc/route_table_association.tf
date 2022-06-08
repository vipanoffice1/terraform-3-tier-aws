resource "aws_route_table_association" "pub_route_tab_ass_1" {

  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.pub_subnet_1.id

}


resource "aws_route_table_association" "pub_route_tab_ass_2" {

  route_table_id = aws_route_table.public_route_table.id
  subnet_id      = aws_subnet.pub_subnet_2.id

}


resource "aws_route_table_association" "db_route_tab_ass_1" {

  route_table_id = aws_route_table.db_route_table.id
  subnet_id      = aws_subnet.db_subnet_1.id

}

resource "aws_route_table_association" "db_route_tab_ass_2" {

  route_table_id = aws_route_table.db_route_table.id
  subnet_id      = aws_subnet.db_subnet_2.id

}