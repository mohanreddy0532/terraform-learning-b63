resource "aws_route53_record" "component" {
  zone_id = "Z08005452NVNO9YZAOL1R"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}
