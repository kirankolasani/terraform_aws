resource "aws_security_group" "roboshop_sg" {
    name = "roboshop_sg"
    tags = {
      Name = "roboshop_sg"
    }

    dynamic ingress {
        for_each = var.ingress #here you will get a variable ingress
        content {
            # description = ingress.value.description
            description = ingress.value["description"]
            protocol  = ingress.value.protocol
            from_port = ingress.value.from_port
            to_port   = ingress.value.to_port
            cidr_blocks = ingress.value.cidr_blocks
        }
        
    }

    egress {
        description = "outbound traffic rules"
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # All traffic
        cidr_blocks = ["0.0.0.0/0"]
    }
    
  
}