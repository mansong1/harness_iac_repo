module "organization_orgf" {
  name   = "orgF"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectF" {
  name            = "projectF"
  organization_id = module.organization_orgf.organization_details.id
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
