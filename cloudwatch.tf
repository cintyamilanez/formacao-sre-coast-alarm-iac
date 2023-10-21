resource "aws_cloudwatch_metric_alarm" "cost_alert" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
  alarm_description   = var.alarm_description

  alarm_actions = [
    "arn:aws:sns:us-east-1:123456789012:cost_alert"
  ]

  ok_actions = [
    "arn:aws:sns:us-east-1:123456789012:cost_alert"
  ]

  insufficient_data_actions = []

  dimensions = {
    ServiceName = "Amazon Elastic Compute Cloud - Compute"
  }
}