module "organization" {
  name   = "orgC"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project" {
  name            = "projectC"
  organization_id = "orgC"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
