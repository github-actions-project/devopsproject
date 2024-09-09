data "aws_route53_zone" "primary" {
  name = "kubeace.com"  # Replace with your domain
}