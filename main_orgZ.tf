module "organization_orgz" {
  name   = "orgZ"
  source = "harness-community/structure/harness//modules/organizations"
  tags = {
    bu = "orgZ"
  }
}
module "project_projectZ" {
  name            = "projectZ"
  organization_id = module.organization_orgz.organization_details.id
  color           = "#9340ac"
  source          = "harness-community/structure/harness//modules/projects"
  tags = {
    app = "ApplicationA"
    bu  = "orgz"
  }
}
