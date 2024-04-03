resource "aws_route53_record" "route53" {
  count = local.instance_count
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [ var.instance_name[count.index] == "web" ? aws_instance.tf-instance[count.index].public_ip : aws_instance.tf-instance[count.index].private_ip]
}