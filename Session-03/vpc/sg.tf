resource "aws_security_group" "sg_web_roboshop" {
    name        = "sg_web_roboshop"
    description = "Allow TLS inbound traffic and all outbound traffic"
    vpc_id      = aws_vpc.vpc_roboshop.id

    tags = {
    Name = "sg_web_roboshop"
    }

    ingress {
    
        description = "All 80 port traffic "
        from_port   = 80
        to_port     = 80
        protocol    = "tcp" 
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
    
        description = "allowing 22 ssh traffic "
        from_port   = 22
        to_port     = 22
        protocol    = "tcp" 
        cidr_blocks = ["49.207.201.43/32"]
    }
    egress {
    
        description = "outbound traffic rules"
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # All traffic
        cidr_blocks = ["0.0.0.0/0"]
    }
    
  
}