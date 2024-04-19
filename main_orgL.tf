module "organization_orgl" {
  name   = "orgL"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgL"
  }
}
module "project_projectL" {
  name            = "projectL"
  organization_id = module.organization_orgl.organization_details.id
  color           = "#2761e2"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgl"
  }
}
