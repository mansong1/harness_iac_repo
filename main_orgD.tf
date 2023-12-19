module "organization_orgd" {
  name   = "orgD"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectD" {
  name            = "projectD"
  organization_id = module.organization_orgd.organization_details.id
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
