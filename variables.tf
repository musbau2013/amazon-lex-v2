variable "bot_name" {
  description = "The name of the Lex V2 bot."
  type        = string
}

variable "bot_description" {
  description = "The description of the Lex V2 bot."
  type        = string
}

# variable "role_arn" {
#   description = "The ARN of the IAM role for the Lex V2 bot."
#   type        = string
# }

variable "child_directed" {
  description = "Whether the bot is directed at children."
  type        = bool
 # default     = false
}

variable "bot_version" {
  description = "The version of the Lex V2 bot."
  type        = string
 # default     = "1"
}

variable "bot_alias_name" {
  description = "The name of the Lex V2 bot alias."
  type        = string
 # default     = "TestBotAlias"
}

variable "idle_session_ttl_in_seconds" {
  description = "The time in seconds that the bot should keep the session active when no user input is received."
  type        = number
  default     = 300  # Default to 5 minutes (300 seconds)
}
