module "development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ext-aws+development_c20@zededa.com"
    AccountName               = "Cluster2.0-Development"
    ManagedOrganizationalUnit = "ou-9hqi-47g15pm3"
    SSOUserEmail              = "michel@zededa.com"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    tier            = "Cluster 2.0"
    customer        = "ZEDEDA Inc. Internal"
    deployment_zone = "development"
    audience        = "sre"
    region          = "eu-west-2"
    owner           = "padraig@zededa.com"
  }

  change_management_parameters = {
    change_requested_by = "@karim"
    change_reason       = "Create development Account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "c20-development"
}
