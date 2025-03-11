variable "aws_region" {
  description = "The AWS region to deploy the Lex V2 bot."
  type        = string
  default     = "us-east-1"
}

variable "bot_name" {
  description = "The name of the Lex V2 bot."
  type        = string
  default = "test-bot"
}

variable "bot_description" {
  description = "The description of the Lex V2 bot."
  type        = string
  default = "testing"
}

variable "role_arn" {
  description = "The ARN of the IAM role for the Lex V2 bot."
  type        = string
  default = "arn:aws:iam::381491964789:role/aws-service-role/lexv2.amazonaws.com/AWSServiceRoleForLexV2Bots"
}

variable "child_directed" {
  description = "Whether the bot is directed at children."
  type        = bool
  default     = false
}

variable "bot_version" {
  description = "The version of the Lex V2 bot."
  type        = string
  default     = "1"
}

variable "bot_alias_name" {
  description = "The name of the Lex V2 bot alias."
  type        = string
  default     = "TestBotAlias"
}