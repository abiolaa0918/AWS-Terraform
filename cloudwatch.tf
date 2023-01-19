resource "aws_cloudwatch_event_rule" "example" {
  name = "example-siem-alert"
  description = "Send alert when threshold is reached"
  event_pattern = <<PATTERN
{
  "source": ["aws.es"],
  "detail-type": ["Elasticsearch Domain State Change"],
  "detail": {
    "cluster-state": ["red"]
  }
}
PATTERN
}

resource "aws_lambda_function" "alert" {
  function_name = "example-siem-alert"
  role = "arn:aws:iam::123456789012:role/lambda_basic_execution"
  handler = "alert.handler"
  runtime = "python3.7"
}

resource "aws_cloudwatch_event_target" "example" {
  rule = aws_cloudwatch_event_rule.example.name
  target_id = "example-siem-alert"
  arn = aws_lambda_function.alert.arn
}
