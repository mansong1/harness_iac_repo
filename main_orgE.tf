module "organization_orge" {
  name   = "orgE"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectE" {
  name            = "projectE"
  organization_id = module.organization_orge.organization_details.id
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
