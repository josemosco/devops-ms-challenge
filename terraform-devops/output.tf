output "sqs_queue_url" {
  value = aws_sqs_queue.devops_queue.id
}

output "sns_topic_arn" {
  value = aws_sns_topic.devops_topic.arn
}

output "sns_subscription_id" {
  value = aws_sns_topic_subscription.sqs_subscription.id
}
