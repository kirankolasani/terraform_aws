output "private_ip" {
    value = aws_instance.tf-instance[*].private_ip
  
}
output "public_ip" {
    value = aws_instance.tf-instance[*].public_ip
  
}

output "public_key" {
    value = aws_key_pair.mykey.public_key
  
}

# The attribute "cpu_core_count" is deprecated.
# output "cpu_count" {
#   value = aws_instance.tf-instance.cpu_core_count
# }
output "ec2-name" {
    value = aws_instance.tf-instance[*].tags_all
  
}

output "route53-records" {
    value = aws_route53_record.route53[*].name
  
}