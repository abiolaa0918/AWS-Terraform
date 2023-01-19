resource "aws_kibana_instance" "example" {
  domain_name = aws_elasticsearch_domain.example.domain_name
  elasticsearch_domain_name = aws_elasticsearch_domain.example.domain_name
}
