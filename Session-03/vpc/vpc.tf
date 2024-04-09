resource "aws_vpc" "vpc_roboshop" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "vpc_roboshop"
    }
    
}
resource "aws_subnet" "public_subnet_roboshp_web" {
    vpc_id = aws_vpc.vpc_roboshop.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "public_subnet_roboshop_web"

    }
  
}
resource "aws_subnet" "private_subnet_roboshop_app" {
    vpc_id = aws_vpc.vpc_roboshop.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "private_subnet_roboshop_app"

    }
  
}
resource "aws_subnet" "private_subnet_roboshop_db" {
    vpc_id = aws_vpc.vpc_roboshop.id
    cidr_block = "10.0.3.0/24"
    tags = {
      Name = "private_subnet_roboshop_db"

    }
  
}
resource "aws_internet_gateway" "igw_roboshop" {
  vpc_id = aws_vpc.vpc_roboshop.id
  tags = {
    Name = "igw_roboshop"
  }
}

resource "aws_route_table" "public_route_table_roboshop" {
    vpc_id = aws_vpc.vpc_roboshop.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_roboshop.id
    }
    tags = {
      Name = "public_route_table_roboshop"
    }
  
}
resource "aws_route_table" "private_route_table_roboshop" {
    vpc_id = aws_vpc.vpc_roboshop.id
    tags = {
      Name = "private_route_table_roboshop"
    }
  
}

resource "aws_route_table_association" "public_route_table_association_roboshop" {
    subnet_id = aws_subnet.public_subnet_roboshp_web.id
    route_table_id = aws_route_table.public_route_table_roboshop.id
  
}

resource "aws_route_table_association" "private_route_table_association_roboshop" {
    subnet_id = aws_subnet.private_subnet_roboshop_app.id
    route_table_id = aws_route_table.private_route_table_roboshop.id
  
}


