provider "aws" {
  region = "ap-south-1"  # Change this to your desired AWS region
}

resource "aws_sqs_queue" "example_queue" {
  name                      = "example-queue"
  visibility_timeout_seconds = 30
  message_retention_seconds = 345600  # 4 days
  max_message_size          = 2048
  delay_seconds             = 0
  receive_wait_time_seconds = 0
}
