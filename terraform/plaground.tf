module "playground" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ext-aws+playground_c20@zededa.com"
    AccountName               = "Cluster2.0-Playground"
    ManagedOrganizationalUnit = "ou-9hqi-47g15pm3"
    SSOUserEmail              = "michel@zededa.com"
    SSOUserFirstName          = "Playground"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    customer        = "ZEDEDA Inc. Internal"
    deployment_zone = "playground"
    audience        = "sre"
    region          = "eu-west-2"
    owner           = "padraig@zededa.com"
  }

  change_management_parameters = {
    change_requested_by = "@karim"
    change_reason       = "Create Playground Account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Cluster2.0-Playground"
}
