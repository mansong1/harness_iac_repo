module "organization_orgg" {
  name   = "orgG"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectG" {
  name            = "projectG"
  organization_id = module.organization_orgg.organization_details.id
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
