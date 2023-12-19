module "organization_orgb" {
  name   = "orgB"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project_projectB" {
  name            = "projectB"
  organization_id = "orgb"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
