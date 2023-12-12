module "organization" {
  name   = "orgB"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project" {
  name            = "projectB"
  organization_id = "orgB"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
