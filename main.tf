provider "aws" {
  region = "us-west-2"
}

resource "aws_elasticsearch_domain" "example" {
  domain_name           = "example-siem"
  elasticsearch_version = "7.11"
  cluster_config {
    instance_type = "t2.small.elasticsearch"
    instance_count = 1
  }
}
