# Formação SRE Cost Alarm IaC

This project is about creating a **cost alarm infrastructure as code** using Terraform for an SRE (Site Reliability Engineering) formation. The project includes a module for creating an SNS topic to send email notifications when the cost threshold is exceeded.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.22.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sns_email_topic"></a> [sns\_email\_topic](#module\_sns\_email\_topic) | ./modules/tf_sns_email | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.cost_alert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_description"></a> [alarm\_description](#input\_alarm\_description) | The description of the alarm. | `string` | `"This metric monitors estimated charges and sends an email when the threshold is exceeded."` | no |
| <a name="input_alarm_name"></a> [alarm\_name](#input\_alarm\_name) | The name of the alarm. | `string` | `"Cost Alert"` | no |
| <a name="input_comparison_operator"></a> [comparison\_operator](#input\_comparison\_operator) | The arithmetic operation to use when comparing the specified statistic and threshold. | `string` | `"GreaterThanThreshold"` | no |
| <a name="input_email_address_1"></a> [email\_address\_1](#input\_email\_address\_1) | n/a | `string` | `"cintya_milanez@hotmail.com"` | no |
| <a name="input_email_address_2"></a> [email\_address\_2](#input\_email\_address\_2) | n/a | `string` | `"paulo.sobral@outlook.com.br"` | no |
| <a name="input_evaluation_periods"></a> [evaluation\_periods](#input\_evaluation\_periods) | The number of periods over which data is compared to the specified threshold. | `number` | `1` | no |
| <a name="input_metric_name"></a> [metric\_name](#input\_metric\_name) | The name of the metric associated with the alarm. | `string` | `"EstimatedCharges"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace of the metric associated with the alarm. | `string` | `"AWS/Billing"` | no |
| <a name="input_period"></a> [period](#input\_period) | The length of time in seconds that the metric associated with the alarm is evaluated. | `number` | `86400` | no |
| <a name="input_region"></a> [region](#input\_region) | Defines the AWS region. | `string` | `"us-east-1"` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | SNS Topic Variables | `string` | `"cost_alert"` | no |
| <a name="input_statistic"></a> [statistic](#input\_statistic) | The statistic to apply to the metric associated with the alarm. | `string` | `"Maximum"` | no |
| <a name="input_threshold"></a> [threshold](#input\_threshold) | The value against which the specified statistic is compared. | `number` | `1` | no |

## Outputs

No outputs.

![image](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white) ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)