resource "aws_security_group" "sg_tf" {
    name = var.sg_name
    description = "Allowing all ports"
    tags = local.sg_tags_name
    ingress {
        description = "allowing all inbound traffic"
        from_port = 0
        protocol = "all"
        to_port = 0
        cidr_blocks = var.sg_cidr
    }

    egress {
        description = "outbound traffic"
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # all ports
        cidr_blocks = var.sg_cidr
    }
  
}