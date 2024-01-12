module "organization_orgp" {
  name   = "orgP"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgP"
  }
}
module "project_projectP" {
  name            = "projectP"
  organization_id = module.organization_orgp.organization_details.id
  color           = "#5c989e"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgp"
  }
}
