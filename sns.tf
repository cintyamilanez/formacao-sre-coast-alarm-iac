

resource "aws_sns_topic" "cost_alert" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "cost_alert_email" {
  topic_arn = aws_sns_topic.cost_alert.arn
  protocol  = "email"
  endpoint  = var.endpoint_emails
}