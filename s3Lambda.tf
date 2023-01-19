resource "aws_s3_bucket" "logs" {
  bucket = "example-siem-logs"
}

resource "aws_lambda_function" "logstash" {
  function_name = "example-siem-logstash"
  role = "arn:aws:iam::123456789012:role/lambda_basic_execution"
  s3_bucket = aws_s3_bucket.logs.bucket
  s3_key = "logstash.zip"
  handler = "logstash.handler"
  runtime = "python3.7"
}
