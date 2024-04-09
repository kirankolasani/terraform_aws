resource "aws_instance" "ec2_web" {
    ami = "ami-0af7e1e7cc9cd3cde"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    subnet_id = aws_subnet.public_subnet_roboshp_web.id
    vpc_security_group_ids = [aws_security_group.sg_web_roboshop.id]
   # security_groups = [aws_security_group.sg_web_roboshop.name] # We've removed the security_groups attribute because it's not necessary when using vpc_security_group_ids.
    tags = {
      Name = "web"
    }
  
}