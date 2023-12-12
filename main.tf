module "organization" {
  name   = "orgD"
  source = "harness-community/structure/harness//modules/organizations"
}
module "project" {
  name            = "orgD"
  organization_id = "orgD"
  color           = "#ffcc5c"
  source          = "harness-community/structure/harness//modules/projects"
}
