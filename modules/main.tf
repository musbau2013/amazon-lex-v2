# Create the Lex V2 bot
resource "awscc_lex_bot" "bot" {
  name        = var.bot_name
  description = var.bot_description
  # role_arn    = "arn:aws:iam::381491964789:role/aws-service-role/lexv2.amazonaws.com/AWSServiceRoleForLexV2Bots"
  idle_session_ttl_in_seconds = "300"
  data_privacy = {
    child_directed = var.child_directed
  }

}

# Create a Lex V2 bot version
resource "awscc_lex_bot_version" "bot_version" {
  bot_id      = awscc_lex_bot.bot.id
  bot_version = var.bot_version
  bot_version_locale_specification = {
    source_bot_version = "DRAFT"
  }
}

# Create a Lex V2 bot alias
resource "awscc_lex_bot_alias" "bot_alias" {
  bot_id      = awscc_lex_bot.bot.id
  bot_version = awscc_lex_bot_version.bot_version.bot_version
   bot_alias_name = var.bot_alias_name

  # bot_alias_locale_settings {
  #   locale_id = "en_US"
  #   enabled   = true
  # }

    bot_alias_locale_settings = [{
    locale_id = "en_US"
    bot_alias_locale_setting = {
      enabled = true
      code_hook_specification = {
        lambda_code_hook = {
          lambda_arn                  = "arn:aws:iam::381491964789:role/aws-service-role/lexv2.amazonaws.com/AWSServiceRoleForLexV2Bots" #"arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:example-function"
          code_hook_interface_version = "1.0"
        }
      }
    }
  }]

}