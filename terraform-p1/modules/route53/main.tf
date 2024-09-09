resource "aws_route53_record" "route-record" {
  zone_id = data.aws_route53_zone.primary.zone_id
  name    = var.record_name
  type    = "CNAME"
  ttl     = 300
  records = ["a0a1869955d3d4a149f878d3c6ebc86a-1417966518.ap-south-1.elb.amazonaws.com"]
}
    