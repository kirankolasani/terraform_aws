resource "aws_instance" "roboshop" {
    for_each = var.instances
    ami = var.ami_id
    instance_type = each.value
    security_groups = [aws_security_group.roboshop_sg.name]

    tags = {
      Name = each.key
    }
  
}

resource "aws_route53_record" "roboshop_route53_records" {
    # for_each = var.instances
    for_each = aws_instance.roboshop
    zone_id = var.zone_id
    name    = "${each.key}.${var.domain}"
    type    = "A"
    ttl     = 1 
    # records = [each.key == "web" ? aws_instance.roboshop[each.key].public_ip : aws_instance.roboshop[each.key].private_ip ]
    records = [each.key == "web" ? each.value.public_ip : each.value.private_ip ]
  
}

# output "Instance_name" {
#   value = { for key, instance in aws_instance.roboshop : key => instance.tags["Name"] }
# }
# output "instances_info" {
#     value = aws_instance.roboshop
  
# }



