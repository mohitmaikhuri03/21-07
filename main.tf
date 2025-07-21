provider "aws" {
  region = var.aws_region
}

module "aws_inspector_2" {
  source = "./inspector"

  aws_inspector_2_enable           = var.aws_inspector_2_enable
  enabled_resources_admin_account  = var.enabled_resources_admin_account

  initialize_delegated_admin_account = false
  enable_delegated_admin_account     = false
  enable_member_accounts             = false
  member_accounts                    = []
  enabled_resources_member_account   = []
  auto_enable                        = []
  auto_enable_member_accounts        = false
  enable_account_associate           = false
  account_associate                  = null
}
