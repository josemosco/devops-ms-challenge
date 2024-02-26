provider "aws" {
  region = "us-east-1"
}

# Crear cola SQS
resource "aws_sqs_queue" "devops_queue" {
  name                      = var.sqs_name
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  visibility_timeout_seconds= 30
}

# Crear tópico SNS
resource "aws_sns_topic" "devops_topic" {
  name = var.sns_name
}

# Crear suscripción SNS a la cola SQS
resource "aws_sns_topic_subscription" "sqs_subscription" {
  topic_arn = aws_sns_topic.devops_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.devops_queue.arn
}
